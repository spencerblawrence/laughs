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
      <div className="grid-container">
        <div className="grid-x grid-margin-x grid-margin-y">
          <div className="cell small-12">
            <div className="profile-show-container">
              <div className="font-slab text1 weight7">User Profile</div>
              <div className="text6 weight3">{this.state.email}</div>
              <br />
              <div className="font-slab text1 weight7">Here are your upcoming shows:</div>
              {events}
            </div>
          </div>
        </div>
      </div>
    );
  }
}

export default UserProfileContainer;
