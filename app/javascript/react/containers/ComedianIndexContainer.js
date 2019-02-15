import React, { Component } from "react";
import ComedianShowTile from "../components/ComedianShowTile";

class ComedianIndexContainer extends Component {
  constructor(props) {
    super(props);
    this.state = {
      comedians: []
    };
  }

  componentDidMount() {
    fetch(`/api/v1/comedian_profiles`)
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
        comedians: data.comedian_profiles
      });
    })
    .catch(error => console.log(`Error in fetch: ${error.message}`));
  }

  render() {
    let comedians = this.state.comedians.map(comedian => {
      return (
        <ComedianShowTile
          key={comedian.id}
          id={comedian.user_id}
          name={comedian.full_name}
          photo={comedian.photo1}
          />
      );
    }
  );

    return (
      <div className="grid-container">
        <div className="grid-x margin-top">
          <div className="cell small-12 font-slab weight7 text2 text-center">The Laughs Comedian Database</div>
          {comedians}
        </div>
      </div>
    );
  }
}

export default ComedianIndexContainer;
