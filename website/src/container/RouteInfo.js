import React, { Component, PropTypes} from 'react';
import { connect } from 'react-redux';

import { getStation } from '../state/transport';

import Routes from '../components/Routes';

import RouteMap from '../components/RouteMap';

const connector = connect((state) => state, {
  getStation
});

export default connector(RouteInfo);

function RouteInfo({ transport, loading, getStation}) {
  return transport.route ? (
    <div>
      <RouteMap route={transport.route}></RouteMap>
    </div>
  ) : (<div></div>);
}
