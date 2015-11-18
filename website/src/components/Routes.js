import React, { Component, PropTypes} from 'react';

import Route from './Route';

export default class Routes extends Component {

  componentDidMount() {
    this.props.getRoutes();
  }

  render() {
    const loadingEl = this.props.loading === 'request_routes' ? <span>loading!</span> : null;
    const routesEl = this.renderRoutes(this.props.routes);

    return (
      <div>
        {loadingEl}
        {routesEl}
      </div>
    );
  }

  renderRoutes(routes) {
    return routes.length ? routes.map((route, i) => <Route data={route} key={i} setRoute={this.props.setRoute} />) : null;
  }

}
