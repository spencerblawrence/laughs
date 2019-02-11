import React, { Component } from 'react';
import { withScriptjs, withGoogleMap, GoogleMap, Marker, InfoWindow } from 'react-google-maps';

class MapClass extends Component {
  constructor(props) {
    super(props);
    this.state = {
    };
    this.onMarkerClick = this.onMarkerClick.bind(this)
  }

  onMarkerClick(event) {
    console.log("Hello!")
    console.log(event)
  }

  render() {
    let markers = this.props.events.map(event => {
      return (
        <Marker
          key={event.id}
          position={{ lat: event.lat, lng: event.lng }}
          onClick={this.onMarkerClick(event)}
          // label={event.name}
          />
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
