import React, { Component, PropTypes} from 'react';

import Station from './Station';

export default class Routes extends Component {

  componentDidMount() {
    this.props.getRoutes();
  }

  render() {
    const loadingEl = this.props.loading ? <span>loading!</span> : null;
    const routesEl = this.renderRoutes(this.props.routes);

    return (
      <div>
        {loadingEl}
        {routesEl}
      </div>
    );
  }

  renderRoutes(routes) {
    return routes.length ? routes.map((route, i) => <Station data={route} key={i} setRoute={this.props.setRoute} />) : null;
  }

}
