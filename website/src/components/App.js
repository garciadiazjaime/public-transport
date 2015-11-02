import React from 'react';
import { connect } from 'react-redux';

import { getRoutes } from '../state/transport.js'

import PlacesList from './PlacesList';

const connector = connect((state) => state, {
  getRoutes
});

export default connector(App);

function App({ transport, getRoutes}) {

  return (
    <div>
      <PlacesList routes={transport.routes} getRoutes={getRoutes}/>
      <div>
        Details
      </div>
    </div>
  );
}

