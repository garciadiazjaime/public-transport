import React, { Component, PropTypes} from 'react';
import Place from './Place';

export default class PlacesList extends Component {

	componentDidMount() {
		this.props.getRoutes();
	}
  
  render(){
    return this.props.routes.length ? 
	    (
	      <div>
	        { this.props.routes.map( (route, i) => <Place data={route} key={i} /> ) }
	      </div>
	    ) : null;
  }
}

PlacesList.propTypes = {
  routes: PropTypes.array.isRequired,
};