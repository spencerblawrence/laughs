import React, { Component } from "react";
import moment from 'moment';
import EventIndexTile from "../components/EventIndexTile";
import MapClass from "../components/MapClass";
import Filters from "../components/Filters";
import { Link } from "react-router";

class EventsIndexContainer extends Component {
  constructor(props) {
    super(props);
    this.state = {
      events: [],
      map_status: true,
      map_button_text: "Hide Map",
      filter_status: true,
      filter_button_text: "Hide Filters",
      max_price: 10,
      max_cost: 100,
      days_out: 7
    };
    this.toggleMap = this.toggleMap.bind(this)
    this.toggleFilters = this.toggleFilters.bind(this)
    this.handleInputChange = this.handleInputChange.bind(this);
  }

  componentDidMount() {
    fetch("/api/v1/events")
    .then(response => {
      if (response.ok) {
        return response;
      } else {
        let errorMessage = `${response.status} (${response.statusText})`,
        error = new Error(errorMessage);
        throw error;
      }
    })
    .then(response => {
      let events = response.json();
      return events;
    })
    .then(events => {
      this.setState({ events: events["events"] });
    })
    .catch(error => console.log(`Error in fetch: ${error.message}`));
  }

  handleInputChange(event) {
    const target = event.target;
    const value = target.type === 'checkbox' ? target.checked : target.value;
    const name = target.name;
    this.setState({ [name]: value });
  }

  toggleFilters() {
    if (this.state.filter_status == true) {
      this.setState({
        filter_status: false,
        filter_button_text: "Show Filters"
      })
    } else {
      this.setState({
        filter_status: true,
        filter_button_text: "Hide Filters"
      })
    }
  }

  toggleMap() {
    if (this.state.map_status == true) {
      this.setState({
        map_status: false,
        map_button_text: "Show Map"
      })
    } else {
      this.setState({
        map_status: true,
        map_button_text: "Hide Map"
      })
    }
  }

  render() {
    let today = moment().format()
    let daysOutDate = moment().add(this.state.days_out, 'day').format()

    let events_filtered = []
    let events = this.state.events.map(event => {
      // debugger
      if (event.cost <= this.state.max_price && event.start_date_time <= daysOutDate) {
        events_filtered.push(event)
        return (
          <EventIndexTile key={event.id} id={event.id} event={event} />
        );
      }
    });

    let map;
    if (this.state.map_status == true) {
      map = <MapClass events={events_filtered} />
    }

    let filters;
    if (this.state.filter_status == true) {
      filters = <Filters
                    filterStatus={this.state.filter_status}
                    maxPrice={this.state.max_price}
                    onChange={this.handleInputChange}
                    daysOutState={this.state.days_out}
                    eventsNo={events_filtered.length}
                    daysOutDate={daysOutDate}
                    />
                }

    return (
      <div className="grid-container">
        <div className="grid-x grid-margin-x grid-margin-y">
          <div className="cell small-8 home-button-row center-content2">
            <Link to={`/events/new`}><button className="button radius spacer">Submit a New Show</button></Link>
            <button className="button radius spacer" onClick={this.toggleMap}>{this.state.map_button_text}</button>
            <button className="button radius spacer" onClick={this.toggleFilters}>{this.state.filter_button_text}</button>
          </div>
        </div>
        <div className="grid-x grid-margin-x center-content2">
          {filters}
        </div>
        {map}
        <div className="grid-x grid-margin-x">
          {events}
        </div>
      </div>
    )
  }
}

export default EventsIndexContainer;
