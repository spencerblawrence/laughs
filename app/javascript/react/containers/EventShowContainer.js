import React, { Component } from "react";
import { Link } from "react-router";

class EventShowContainer extends Component {
  constructor(props) {
    super(props);
    this.state = {
      event: {}
    };
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

  render() {
    return (
      <div>
        <h2 className="title">{this.state.event.name}</h2>
        <p>{this.state.event.location}</p>
        <p>{this.state.event.date}</p>
        <p>{this.state.event.start_time}</p>
        <p>{this.state.event.cost}</p>
        <p>{this.state.event.cost}</p>
      </div>
    );
  }
}

export default EventShowContainer;
