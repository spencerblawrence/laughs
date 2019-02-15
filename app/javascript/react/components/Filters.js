import React from "react";
import moment from 'moment';

const Filters = props => {
  let filterDiv =
    <div>
      <div>
        How much are you willing to spend? &nbsp;
        <input type="range" min="0" max="25" step="5" name="max_price" value={props.maxPrice} onChange={props.onChange} />
        &nbsp; <b>${props.maxPrice}</b>
      </div>
      <div>
        How far out do you want to look? &nbsp;
        <input type="range" min="0" max="21" step="1" name="days_out" value={props.daysOutState} onChange={props.onChange} />
        &nbsp; <b>{props.daysOutState} days out</b> (shows up until {moment(props.daysOutDate).format('dddd MMMM Do, h:mm a')})
      </div>
      <div>
        # of shows that meet your criteria: <b>{props.eventsNo}</b>
      </div>
    </div>

  return (
    <div className="cell shrink callout round-borders box-shadow center-content2">
      {filterDiv}
    </div>
  );
};

export default Filters;
