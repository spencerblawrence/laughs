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
      <div className="row">
        {events}
      </div>
    )
  }
}

export default EventsIndexContainer;
