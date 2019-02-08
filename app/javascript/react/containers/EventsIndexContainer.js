import React, { Component } from "react";
import EventIndexTile from "../components/EventIndexTile";
import { Link } from "react-router";

class EventsIndexContainer extends Component {
  constructor(props) {
    super(props);
    this.state = {
      events: []
    };
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

    return (
      <div className="grid-container">
        <div className="grid-x grid-margin-x grid-margin-y home-button-row">
          <div className="cell small-12">
            <Link to={`/events/new`}>
              <button className="button radius">Submit a New Show</button>
            </Link>
          </div>
        </div>
        <div className="grid-x grid-margin-x">
          <div className="cell small-12">
            {events}
          </div>
        </div>
      </div>
    )
  }
}

export default EventsIndexContainer;
