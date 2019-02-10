import React, { Component } from 'react';
import { withGoogleMap, GoogleMap, Marker } from 'react-google-maps';

class Map extends Component {
  render() {
    const GoogleMapExample = withGoogleMap(props => (
      <GoogleMap
        defaultCenter = { { lat: 42.3601, lng: -71.0589 } }
        defaultZoom = { 11 }
        >
        {props.isMarkerShown && <Marker position={{ lat: 42.3601, lng: -71.0589 }} />}
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

export default Map;
