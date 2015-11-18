import React, { Component, PropTypes} from 'react';
import { connect } from 'react-redux';

import { getStations } from '../state/transport';

import Routes from '../components/Routes';

import RouteMap from '../components/RouteMap';

const connector = connect((state) => state, {
  getStations
});

export default connector(RouteInfo);

function RouteInfo({ transport, loading, getStations}) {
  return transport.route ? (
    <div>
      <RouteMap route={transport.route} stations={transport.stations} loading={loading}></RouteMap>
    </div>
  ) : (<div></div>);
}
