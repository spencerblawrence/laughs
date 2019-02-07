import React, { Component } from "react";
import InputField from "../components/InputField";
import DayPicker from 'react-day-picker';

class NewShowContainer extends Component {
  constructor(props) {
    super(props);
    this.state = {
      name: "",
      venue: "",
      address: "",
      started_at_date: undefined,
      started_at_time: "",
      cost: 0,
      website: "",
      description: "",
      errors: []
    };

    this.handleInputChange = this.handleInputChange.bind(this);
    this.handleDayClick = this.handleDayClick.bind(this);
    this.handleSubmit = this.handleSubmit.bind(this);
    this.handleClear = this.handleClear.bind(this);
    this.addNewShow = this.addNewShow.bind(this);
  }

  handleInputChange(event) {
    const target = event.target;
    const value = target.type === 'checkbox' ? target.checked : target.value;
    const name = target.name;
    this.setState({ [name]: value });
  }

  handleDayClick(day, { selected }) {
    console.log(day)
    if (selected) {
      this.setState({ started_at_date: undefined });
      return;
    }
    this.setState({ started_at_date: day });
  }

  handleSubmit(event) {
    event.preventDefault();
    let formPayload = {
      event: {
        name: this.state.name,
        venue: this.state.venue,
        address: this.state.address,
        started_at_date: this.state.started_at_date.toDateString(),
        started_at_time: this.state.started_at_time,
        cost: this.state.cost,
        website: this.state.website,
        description: this.state.description
      }
    };
    this.addNewShow(formPayload);
    this.handleClear();
  }

  handleClear() {
    this.setState({
      name: "",
      venue: "",
      address: "",
      started_at_date: null,
      cost: "",
      website: "",
      description: "",
      errors: []
    });
  }

  addNewShow(formPayload) {
    console.log(formPayload)
    fetch("/api/v1/events", {
      credentials: "same-origin",
      method: "POST",
      body: JSON.stringify(formPayload),
      headers: {
        Accept: "application/json",
        "Content-Type": "application/json"
      }
    })
    .then(response => {
      if (response.ok) {
        return response;
      } else {
        let errorMessage = `${response.status} (${response.statusText})`,
        error = new Error(errorMessage);
        throw error;
      }
    })
    .then(response => response.json())
    .then(newShowData => {
      if (newShowData.error) {
        this.setState({ errors: newShowData.error });
      }
      return location.href=`/events/${newShowData.event.id}`
    })
    .catch(error => console.log(`Error in fetch: ${error.message}`));
  }

  render() {
    let errorDiv
    let errors
    if (this.state.errors) {
      errors = this.state.errors.map(error => {
        return <li key={error}>{error}</li>;
        });
        errorDiv = <div>{errors}</div>
      }

      return (
        <div className="grid-container grid-x align-center">
          <div className="callout cell small-12">
            <h1 className="text1">Create a Show</h1>
            {errorDiv}
            <form onSubmit={this.handleSubmit}>
              <InputField
                label="Show Name"
                name="name"
                type="text"
                content={this.state.name}
                onChange={this.handleInputChange}
                />
              <InputField
                label="Venue"
                name="venue"
                type="text"
                content={this.state.venue}
                onChange={this.handleInputChange}
                />
              <InputField
                label="Address (eg 144 Main St., Somerville, MA 02144)"
                name="address"
                type="text"
                content={this.state.address}
                onChange={this.handleInputChange}
                />
              <div>
                <p>What date is the show?</p>
                {this.state.started_at_date ? (
                  <p>You selected {this.state.started_at_date.toDateString()}</p>
                ) : (
                  <p>Please select a day.</p>
                )}
                <DayPicker
                  onDayClick={this.handleDayClick}
                  selectedDays={this.state.started_at_date}
                  />
              </div>
              <InputField
                label="Time"
                name="started_at_time"
                type="time"
                content={this.state.started_at_time}
                onChange={this.handleInputChange}
                />
              <InputField
                label="Cost ($)"
                name="cost"
                type="number"
                content={this.state.cost}
                onChange={this.handleInputChange}
                />
              <InputField
                label="Website"
                name="website"
                type="url"
                content={this.state.website}
                onChange={this.handleInputChange}
                />
              <InputField
                label="Description"
                name="description"
                type="text"
                content={this.state.description}
                onChange={this.handleInputChange}
                />
              <div className="button-group">
                <input className="button radius" type="submit" value="Submit" />
                <button className="button radius" onClick={this.handleClear}>Clear</button>
              </div>
            </form>
          </div>
        </div>
      );
    }
  }

  export default NewShowContainer;
