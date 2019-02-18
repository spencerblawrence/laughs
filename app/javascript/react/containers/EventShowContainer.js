import React, { Component } from "react";
import { Link } from "react-router";
import ComedianShowTile from "../components/ComedianShowTile";
import MapIndividual from "../components/MapIndividual";

class EventShowContainer extends Component {
  constructor(props) {
    super(props);
    this.state = {
      event: {},
      comedians: [],
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
      this.setState({
        event: event.event,
        comedians: event.event.comedians
      });
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
    let comedians;
    comedians = this.state.comedians.map(comedian => {
      return (
        <ComedianShowTile
          key={comedian.id}
          id={comedian.id}
          name={comedian.full_name}
          photo={comedian.profile_photo}
          />
      );
    }
  );

  let cost;
  if (this.state.event.cost == 0) {
    cost = "FREE!"
  }

  return (
    <div className="grid-container">
      <div className="grid-x callout event-show-tile box-shadow">
        <div className="cell small-3">
          <img className="event-index-tile-image" src={this.state.event.image_url} />
        </div>
        <div className="cell small-6 pad-left">
          <div className="font-slab text3 weight7 small-margin-bottom">{this.state.event.name}</div>
          <p>{this.state.event.venue}</p>
          <p>{this.state.event.address}</p>
          <p>{this.state.event.started_at_date}</p>
          <p>{this.state.event.started_at_time}</p>
          <p>${this.state.event.cost}</p>
          <p>{cost}</p>
          <div className="button radius" onClick={this.signupClick}>{this.state.signup_button_text}</div>
        </div>
        <div className="cell small-3">
          <MapIndividual
            lat={this.state.event.lat}
            lng={this.state.event.lng}
            />
        </div>
      </div>
      <div className="grid-x">
        <div className="cell small-12">
          <div className="font-slab text3 weight7 center-text">The Lineup</div>
        </div>
      </div>
      <div className="grid-x callout round-borders box-shadow">
        {comedians}
      </div>
    </div>
  );
}
}

export default EventShowContainer;
