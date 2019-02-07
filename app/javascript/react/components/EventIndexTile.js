import React from "react";
import { Link } from "react-router";

const EventIndexTile = props => {
  let cost
  if (props.event.cost == 0) {
    cost = "FREE!"
  }

  return (
    <div className="callout columns small-10">
      <h2 className="title">{props.event.name}</h2>
      <p>{props.event.venue}</p>
      <p>{props.event.address}</p>
      <p>{props.event.started_at_date}</p>
      <p>{props.event.started_at_time}</p>
      <p>${props.event.cost}</p>
      <p>{cost}</p>
      <Link to={`/events/${props.id}`}><p>Learn More</p></Link>
      <br />
    </div>
  );
};

export default EventIndexTile;
