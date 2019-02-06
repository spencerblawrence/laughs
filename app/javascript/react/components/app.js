import React from "react";
import { Router, browserHistory, Route, IndexRoute } from "react-router";
import EventsIndexContainer from "../containers/EventsIndexContainer";
import EventShowContainer from "../containers/EventShowContainer";
import SplashPage from "./components/SplashPage";

export const App = props => {
  return (
    <Router history={browserHistory}>
      <Route path="/" component={SplashPage} />
      <Route path="/events" component={EventsIndexContainer} />
      <Route path="/events/:id" component={EventShowContainer} />
    </Router>
  );
};

export default App;
