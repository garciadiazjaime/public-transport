import React, { Component, PropTypes} from 'react';

export default class RouteMap extends Component {

  render(){

    return (
      <div>
        Mapa
      </div>
    );
  }
}

RouteMap.propTypes = {
  route: PropTypes.object.isRequired
};
