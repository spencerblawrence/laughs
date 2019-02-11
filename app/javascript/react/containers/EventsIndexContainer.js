import React, { Component } from "react";
import EventIndexTile from "../components/EventIndexTile";
import MapClass from "../components/MapClass";
import MyMapComponent from "../components/MyMapComponent";
import MapWithAMakredInfoWindow from "../components/MapTest";
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
      max_price: 5,
      max_cost: 100,
      days_out: 21
    };
    this.toggleMap = this.toggleMap.bind(this)
    this.showFilters = this.showFilters.bind(this)
    this.handleInputChange = this.handleInputChange.bind(this);
    this.stringifyDate = this.stringifyDate.bind(this);
  }

  handleInputChange(event) {
    const target = event.target;
    const value = target.type === 'checkbox' ? target.checked : target.value;
    const name = target.name;
    this.setState({ [name]: value });
  }

  showFilters() {
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

  stringifyDate(date) {
    debugger
    let dd = date.getDate();
    let mm = date.getMonth() + 1; // January is 0!

    let weekday = new Array('Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday');
    let dayOfWeek = weekday[date.getDay()];

    if (dd < 10) {
      dd = '0' + dd;
    }

    if (mm < 10) {
      mm = '0' + mm;
    }

    return `${dayOfWeek} ${mm}/${dd}`;
  }

  render() {
    let events_filtered = []
    let events = this.state.events.map(event => {
      if (event.cost <= this.state.max_price) {
        events_filtered.push(event)
        return (
          <EventIndexTile key={event.id} id={event.id} event={event} />
        );
      }
    });

    let map;
    if (this.state.map_status == true) {
      map = <MapClass
        events={events_filtered}
        />
    }

    let today = new Date();
    let daysOutDate = today + this.state.days_out
    let filterDiv;

    let moment = require('moment');
    console.log(moment().format());

    if (this.state.filter_status == true) {
      filterDiv =
      <div className="callout cell shrink small-10">
        <div>
          How much are you willing to spend? &nbsp;
          <input type="range" min="0" max="25" step="5" name="max_price" value={this.state.max_price} onChange={this.handleInputChange} />
          &nbsp; ${this.state.max_price}
        </div>
        <div>
          How far out do you want to look? &nbsp;
          <input type="range" min="0" max="21" step="1" name="days_out" value={this.state.days_out} onChange={this.handleInputChange} />
          &nbsp; {this.state.days_out} days out ({daysOutDate})
        </div>
      </div>
    }

    return (
      <div className="grid-container">
        <div className="grid-x grid-margin-x grid-margin-y">
          <div className="cell small-12 home-button-row">
            <Link to={`/events/new`}><button className="button radius spacer">Submit a New Show</button></Link>
            <button className="button radius spacer" onClick={this.toggleMap}>{this.state.map_button_text}</button>
            <button className="button radius spacer" onClick={this.showFilters}>{this.state.filter_button_text}</button>
            {filterDiv}
          </div>
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
