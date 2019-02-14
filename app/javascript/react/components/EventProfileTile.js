import React from "react";
import { Link } from "react-router";
import moment from 'moment';

const EventIndexTile = props => {
  let cost
  if (props.event.cost == 0) {
    cost = "FREE!"
  }

  return (
    <div className="grid-x callout cell small-12 event-index-tile">
      <div className="cell small-3">
        <img className="event-index-tile-image" src={props.event.image_url} />
      </div>
      <div className="cell small-9 event-index-tile-text">
        <div className="font-slab text4 weight7 small-margin-bottom">{props.event.name}</div>
        <p>{props.event.venue}</p>
        <p>{props.event.address}</p>
        <p>{props.event.started_at_date}</p>
        <p>{props.event.started_at_time}</p>
        <p>${props.event.cost}</p>
        <p>{cost}</p>
        <Link to={`/events/${props.id}`}><p>See Lineup, Reviews & RSVP</p></Link>
      </div>
    </div>
  );
};

export default EventIndexTile;
