import React, { Component } from "react";

const { compose, withProps, withStateHandlers } = require("recompose");
// const FaAnchor = require("react-icons/lib/fa/anchor");
const {
  withScriptjs,
  withGoogleMap,
  GoogleMap,
  Marker,
  InfoWindow,
} = require("react-google-maps");

const MapWithAMakredInfoWindow = compose(
  withStateHandlers(() => ({
    isOpen: false,
  }), {
    onToggleOpen: ({ isOpen }) => () => ({
      isOpen: !isOpen,
    })
  }),
  withScriptjs,
  withGoogleMap
)(props =>
  <GoogleMap
    defaultZoom={8}
    defaultCenter={{ lat: -34.397, lng: 150.644 }}
  >
    <Marker
      position={{ lat: -34.397, lng: 150.644 }}
      onClick={props.onToggleOpen}
    >
      {props.isOpen && <InfoWindow onCloseClick={props.onToggleOpen}>
      </InfoWindow>}
    </Marker>
  </GoogleMap>
);

export default MapWithAMakredInfoWindow;

// <MapWithAMakredInfoWindow
//   googleMapURL="https://maps.googleapis.com/maps/api/js?key=AIzaSyCsT_LH15YmRN4jASWcsgE3_ShwkWsPEXE"
//   loadingElement={<div style={{ height: `100%` }} />}
//   containerElement={<div style={{ height: `400px` }} />}
//   mapElement={<div style={{ height: `100%` }} />}
// />
