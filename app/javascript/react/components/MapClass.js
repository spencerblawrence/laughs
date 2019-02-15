import React, { Component } from 'react';
import { withGoogleMap, GoogleMap } from 'react-google-maps';
import MapMarkers from "./MapMarkers";

class MapClass extends Component {
  constructor(props) {
    super(props);
    this.state = {
    };
  }

  render() {
    const GoogleMapExample = withGoogleMap(props => (
      <GoogleMap
        defaultCenter = { { lat: 42.3601, lng: -71.0589 } }
        defaultZoom = { 12 }
        >
        <MapMarkers events={this.props.events} />
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
