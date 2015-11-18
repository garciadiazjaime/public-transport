import React, { Component, PropTypes} from 'react';
import { connect } from 'react-redux';

import { getRoutes, setRoute } from '../state/transport';

import Routes from '../components/Routes';

const connector = connect((state) => state, {
  getRoutes,
  setRoute
});

export default connector(RoutesContainer);

function RoutesContainer({ transport, loading, getRoutes, setRoute}) {

  return (
    <div>
      <Routes routes={transport.routes} loading={loading} getRoutes={getRoutes} setRoute={setRoute} />
    </div>
  )
}
