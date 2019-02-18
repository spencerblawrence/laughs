import React, { Component } from 'react';
import { withGoogleMap, GoogleMap, Marker } from 'react-google-maps';

const GoogleMapIndividual = withGoogleMap(props => {
  console.log(props);
  return (
    <GoogleMap
      defaultZoom = { 15 }
      center = { props.center }
      >
      <Marker position = { props.center } />
    </GoogleMap>
  );
});

class MapIndividual extends Component {
  constructor(props) {
    super(props);
    this.state = {
    };
  }

  render() {
    let lat;
    let lng;

    if (this.props.lat != undefined && this.props.lng != undefined) {
      lat = this.props.lat;
      lng = this.props.lng;
    }

    return(
      <div className="map-container">
        <GoogleMapIndividual
          isMarkerShown
          loadingElement = { <div style={{ height: `100%` }} /> }
          containerElement = { <div style={{ height: `300px`, width: '100%' }} /> }
          mapElement = { <div style={{ height: `100%` }} /> }
          center = {{ lat: lat, lng: lng }}
          >
          <Marker position = {{ lat: lat, lng: lng }} />
        </GoogleMapIndividual>
      </div>
    );
  }
};

export default MapIndividual;

// if (this.props.lat != undefined && this.props.lng != undefined) {
//   let GoogleMapExample = withGoogleMap(props => (
//     <GoogleMap
//       defaultCenter = { { lat: this.props.lat, lng: this.props.lng } }
//       defaultZoom = { 12 }
//       >
//     </GoogleMap>
//   ));
// }

// <GoogleMap
//   isMarkerShown
//   loadingElement={<div style={{ height: `100%` }} />}
//   containerElement={ <div style={{ height: `100%`, width: '100%' }} /> }
//   mapElement={ <div style={{ height: `100%` }} /> }
//   defaultCenter = { { lat: this.props.lat, lng: this.props.lng } }
//   defaultZoom = { 12 }
//   >
//   <Marker position={{ lat: this.props.lat, lng: this.props.lng }} />
// </GoogleMap>
//
