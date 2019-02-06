import React from "react";
import { Router, browserHistory, Route, IndexRoute } from "react-router";
import EventsIndexContainer from "../containers/EventsIndexContainer";
import EventShowContainer from "../containers/EventShowContainer";

export const App = props => {
  return (
    <Router history={browserHistory}>
      <Route path="/" component={EventsIndexContainer} />
      <Route path="/events" component={EventsIndexContainer} />
      <Route path="/events/:id" component={EventShowContainer} />
    </Router>
  );
};

export default App;
