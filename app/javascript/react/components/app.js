import React from "react";
import { Router, browserHistory, Route, IndexRoute } from "react-router";
import EventsIndexContainer from "../containers/EventsIndexContainer";
import EventShowContainer from "../containers/EventShowContainer";
import NewShowContainer from "../containers/NewShowContainer";
import UserProfileContainer from "../containers/UserProfileContainer";
import ComedianProfileContainer from "../containers/ComedianProfileContainer";
import ComedianIndexContainer from "../containers/ComedianIndexContainer";
import SplashPage from "./SplashPage";

export const App = props => {
  return (
    <Router history={browserHistory}>
      <Route path="/" component={EventsIndexContainer} />
      <Route path="/events" component={EventsIndexContainer} />
      <Route path="/events/new" component={NewShowContainer} />
      <Route path="/events/:id" component={EventShowContainer} />
      <Route path="/users/:id" component={UserProfileContainer} />
      <Route path="/profile" component={UserProfileContainer} />
      <Route path="/comedians/:id" component={ComedianProfileContainer} />
      <Route path="/comedians" component={ComedianIndexContainer} />
    </Router>
  );
};

export default App;
