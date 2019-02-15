import React, { Component } from "react";
import EventIndexTile from "../components/EventIndexTile";

class ComedianProfileContainer extends Component {
  constructor(props) {
    super(props);
    this.state = {
      userData: {},
      comedianProfile: {},
      gigs: []
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
    .then(data => {
      this.setState({
        userData: data.user,
        comedianProfile: data.user.comedian_profile,
        gigs: data.user.gigs
      });
    })
    .catch(error => console.log(`Error in fetch: ${error.message}`));
  }

  render() {
    let gigs = this.state.gigs.map(gig => {
      return (
        <EventIndexTile key={gig.id} id={gig.id} event={gig} />
      );
    }
  );

    return (
      <div className="grid-container callout center round-borders margin-top box-shadow">
        <div className="grid-x margin-top">
          <div className="cell small-12 font-slab weight7 text2">{this.state.userData.full_name}</div>
        </div>
        <div className="grid-x">
          <div className="cell small-4">
            <img src={this.state.comedianProfile.photo1} className="round-borders" />
          </div>
          <div className="cell small-8 pad-left">
            <p>{this.state.comedianProfile.description1}</p>
            <a href={this.state.comedianProfile.website}>{this.state.comedianProfile.website}</a>
            <p>Based out of {this.state.comedianProfile.city_state}</p>
          </div>
        </div>
        <div className="grid-x grid-margin-x margin-top">
          <div className="cell small-12">
            <div className="font-slab weight7 text4">Upcoming Shows</div>
          </div>
          {gigs}
        </div>
      </div>
    );
  }
}

export default ComedianProfileContainer;
