import React, { Component } from 'react';
import { withScriptjs, withGoogleMap, GoogleMap, Marker, InfoWindow } from 'react-google-maps';
import { FaAnchor } from 'react-icons/fa';


class MapClass extends Component {
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
          <div>
            <p><b>{event.name}</b></p>
            <p>{event.venue}</p>
            <p>{event.address}</p>
            <p>{event.start_at_date}</p>
            <p>{event.started_at_time}</p>
            <p>${event.cost}</p>
          </div>
        </InfoWindow>}
        </Marker>
      );
    });

    const GoogleMapExample = withGoogleMap(props => (
      <GoogleMap
        defaultCenter = { { lat: 42.3601, lng: -71.0589 } }
        defaultZoom = { 11 }
        >
        {markers}
      </GoogleMap>
    ));

    return(
      <div className="map-container">
        <GoogleMapExample
          isMarkerShown
          loadingElement={<div style={{ height: `100%` }} />}
          containerElement={ <div style={{ height: `500px`, width: '100%' }} /> }
          mapElement={ <div style={{ height: `100%` }} /> }
          />
      </div>
    );
  }
};

export default MapClass;

// label={event.name}
// <Markers />
