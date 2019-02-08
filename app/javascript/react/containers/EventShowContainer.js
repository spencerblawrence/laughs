import React, { Component } from "react";
import { Link } from "react-router";

class EventShowContainer extends Component {
  constructor(props) {
    super(props);
    this.state = {
      event: {},
      signup_status: false,
      signup_button_text: "RSVP!"
    };
    this.signupClick = this.signupClick.bind(this)
  }

  componentDidMount() {
    fetch(`/api/v1/events/${this.props.params.id}`)
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
    .then(event => {
      this.setState({ event: event["event"] });
    })
    .catch(error => console.log(`Error in fetch: ${error.message}`));
  }

  signupClick() {
    if (this.state.signup_status == false) {
      this.setState({
        signup_status: true,
        signup_button_text: "Confirmed!"
      })
      this.signupFetch()
    }
  }

  signupFetch() {
    fetch("/api/v1/signups", {
      credentials: "same-origin",
      method: "POST",
      body: JSON.stringify({ event_id: this.state.event.id }),
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
    .catch(error => console.log(`Error in fetch: ${error.message}`));
  }

  render() {
    let cost
    if (this.state.event.cost == 0) {
      cost = "FREE!"
    }
    return (
      <div className="grid-container">
        <div className="callout">
          <h2 className="title">{this.state.event.name}</h2>
          <p>{this.state.event.venue}</p>
          <p>{this.state.event.address}</p>
          <p>{this.state.event.started_at_date}</p>
          <p>{this.state.event.started_at_time}</p>
          <p>${this.state.event.cost}</p>
          <p>{cost}</p>
          <div className="button button-fantastic" onClick={this.signupClick}><p>{this.state.signup_button_text}</p></div>
        </div>
      </div>
    );
  }
}

export default EventShowContainer;
