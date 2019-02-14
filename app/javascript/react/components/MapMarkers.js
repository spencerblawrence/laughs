import React, { Component } from 'react';
import { Marker, InfoWindow } from 'react-google-maps';
import { Link } from "react-router";

class MapMarkers extends Component {
  constructor(props) {
    super(props);
    this.state = {
      openMarker: null
    };
    this.onMarkerClick = this.onMarkerClick.bind(this)
  }

  onMarkerClick(event_id) {
    // set state of openMarker to id of clicked marker
    console.log(`Hello from ${event_id}`)
    this.setState({ openMarker: event_id })
  }

  render() {
    let markers = this.props.events.map(event => {
      // arrow functions let us bundle up other functions and keep them safe
      // it is a loaded gun - but conveniently doesn't fire on page load
      // so we put onMarkerClick within an arrow function to have it fire when we want
      let onClick = () => {
        this.onMarkerClick(event.id)
      }

      return (
        <Marker
          key={event.id}
          position={{ lat: event.lat, lng: event.lng }}
          onClick={onClick}
          info={event}
        >
        {this.state.openMarker == event.id && <InfoWindow>
          <div className="text5">
            <p><b>{event.name}</b></p>
            <p>{event.venue}</p>
            <p>{event.address}</p>
            <p>{event.start_at_date}</p>
            <p>{event.started_at_time}</p>
            <p>${event.cost}</p>
            <Link to={`/events/${event.id}`}><p>Learn More & RSVP</p></Link>
          </div>
        </InfoWindow>}
        </Marker>
      );
    });

    return(
      <div>
        {markers}
      </div>
    );
  }
};

export default MapMarkers;
