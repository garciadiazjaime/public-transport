import React, { Component, PropTypes} from 'react';

export default class RouteMap extends Component {

  render() {
    const mapElement = this.props.loading === 'request_stations' ?
      <span>loading!</span> : this.renderStations(this.props.stations);
    return (
      <div>
        {mapElement}
      </div>
    );
  }

  renderStations(stations) {
    console.log(stations);
    var listEL = stations.length ?
      stations.map((station, i) => <li key={i}>{station.name}</li>)
      : null;
    return listEL ? (
      <ul>
        {listEL}
      </ul>
    ) : null;
  }
}

RouteMap.propTypes = {
  route: PropTypes.object.isRequired
};
