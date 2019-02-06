import React from "react";
import { Link } from "react-router";

const EventIndexTile = props => {
  return (
    <div className="index-tile-wrapper small-12 columns">
      <div className="podcast-index-tile">
        <h2 className="title">{props.event.name}</h2>
        <p>{props.event.location}</p>
        <p>{props.event.date}</p>
        <p>{props.event.start_time}</p>
        <p>{props.event.cost}</p>
        <Link to={`/events/${props.id}`}><p>Learn More</p></Link>
        <br />
      </div>
    </div>
  );
};

export default EventIndexTile;
