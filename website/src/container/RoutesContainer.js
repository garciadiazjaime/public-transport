import React, { Component, PropTypes} from 'react';
import { connect } from 'react-redux';

import { getRoutes } from '../state/transport.js'

import Routes from '../components/Routes.js'

const connector = connect((state) => state, {
  getRoutes
});

export default connector(RouteCounter);

function RouteCounter({ transport, loading, getRoutes}) {
	
  return (
    <div>
      <Routes routes={transport.routes} getRoutes={getRoutes} loading={loading} />
    </div>
  )
}