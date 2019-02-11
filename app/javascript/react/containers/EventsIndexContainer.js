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
      map_button_text: "Hide Map"
    };
    this.toggleMap = this.toggleMap.bind(this)
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

  render() {
    let events = this.state.events.map(event => {
      return (
        <EventIndexTile key={event.id} id={event.id} event={event} />
      );
    });

    let map;
    if (this.state.map_status == true) {
      map = <MapClass
        events={this.state.events}
        />
    }

    return (
      <div className="grid-container">
      <div className="grid-x grid-margin-x grid-margin-y">
          <div className="cell small-12 home-button-row">
            <Link to={`/events/new`}><button className="button radius spacer">Submit a New Show</button></Link>
            <button className="button radius spacer" onClick={this.toggleMap}>{this.state.map_button_text}</button>
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
