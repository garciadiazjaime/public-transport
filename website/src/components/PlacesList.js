import React, { Component, PropTypes} from 'react';
import Place from './Place';

export default class PlacesList extends Component {
  
  render(){
    return (
      <div>
        { this.props.places.map( (route, i) => <Place data={route} key={i} /> ) }
      </div>
    );
  }
}

PlacesList.propTypes = {
  places: PropTypes.array.isRequired,
};