import React, { Component } from "react";
import { Link } from "react-router";
import moment from 'moment';
import MapIndividual from "./MapIndividual";

class EventTileWideWMap extends Component {
  constructor(props) {
    super(props);
    this.state = {
      event: {}
    };
  }

  componentDidMount() {
    fetch(`/api/v1/events/${this.props.id}`)
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
      let event = response.json();
      return event;
    })
    .then(event => {
      this.setState({ event: event.event });
    })
    .catch(error => console.log(`Error in fetch: ${error.message}`));
  }

  render() {
    let cost
    if (this.state.event.cost == 0) {
      cost = "FREE!"
    }

    return (
      <div className="grid-x callout cell small-12 event-index-tile">
        <div className="cell small-3">
          <img className="event-index-tile-image" src={this.state.event.image_url} />
        </div>
        <div className="cell small-6 pad-left">
          <div className="font-slab text4 weight7 small-margin-bottom">{this.state.event.name}</div>
          <p>{this.state.event.venue}</p>
          <p>{this.state.event.address}</p>
          <p>{this.state.event.started_at_date}</p>
          <p>{this.state.event.started_at_time}</p>
          <p>${this.state.event.cost}</p>
          <p>{cost}</p>
          <Link to={`/events/${this.state.event.id}`}><button className="button event-tile-button radius spacer">See Lineup, Reviews & RSVP</button></Link>
        </div>
        <div className="cell small-3">
          <MapIndividual
            lat={this.state.event.lat}
            lng={this.state.event.lng}
            />
        </div>
      </div>
    );
  };
}

export default EventTileWideWMap;
