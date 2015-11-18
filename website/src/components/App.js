import React from 'react';

import RoutesContainer from '../container/RoutesContainer';
import RouteInfo from '../container/RouteInfo';
// require("!bootstrap-webpack!../../bootstrap.config.js")
require("bootstrap-sass!./../../bootstrap-sass.config.js");

export default function App() {

  return (
    <div>
      <RoutesContainer />
      <RouteInfo />
    </div>
  );
}
