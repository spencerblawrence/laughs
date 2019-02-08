import React, { Component } from "react";
import EventIndexTile from "../components/EventIndexTile";

class UserProfileContainer extends Component {
  constructor(props) {
    super(props);
    this.state = {
      email: "",
      events: []
    };
  }

  componentDidMount() {
    fetch(`/api/v1/users/${this.props.params.id}`)
    .then(response => {
      if (response.ok) {
        return response;
      } else {
        let errorMessage = `${response.status} (${response.statusText})`,
        error = new Error(errorMessage);
        throw error;
      }
    })
    .then(response => response.json())
    .then(userData => {
      this.setState({
        email: userData.user.email,
        events: userData.user.events
      });
    })
    .catch(error => console.log(`Error in fetch: ${error.message}`));
  }

  render() {
    let events = this.state.events.map(event => {
      return (
        <EventIndexTile key={event.id} id={event.id} event={event} />
      );
    });

    return (
      <div className="grid-container grid-x align-center">
        <div className="callout cell small-12">
          <h1 className="text1">Hello from user profile container</h1>
          <p>{this.state.email}</p>
          {events}
        </div>
      </div>
    );
  }
}

export default UserProfileContainer;
