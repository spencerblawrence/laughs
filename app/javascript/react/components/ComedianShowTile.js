import React from "react";
import { Link } from "react-router";

const ComedianShowTile = props => {

  return (
    <div className="cell small-4 comedian-show-tile-box">
      <p className="center-text"><b>{props.name}</b></p>
      <Link to={`/comedians/${props.id}`}>
        <img src={props.photo} className="comedian-show-tile-pic"/>
      </Link>
    </div>
  );
};

export default ComedianShowTile;

// <a href={`/comedians/${props.id}`}>
//   <img src={props.photo} className="comedian-show-tile-pic"/>
// </a>
