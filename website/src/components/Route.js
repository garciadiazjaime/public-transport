import React, { Component, PropTypes} from 'react';

export default class Route extends Component {

  render(){

    return (
      <div>
        <div className="text-info">
          {this.props.data.name}
        </div>
        <div>
          {this.getCategory(this.props.data.category)}
        </div>
        <div>
          <button onClick={e => this.handleClick(e)} className="btn btn-primary">detalle</button>
        </div>
      </div>
    );
  }

  handleClick(e) {
    this.props.setRoute(this.props.data);
  }

  getCategory(category) {
    switch(category) {
      case 1:
        return 'Taxy';
      case 2:
        return 'Camion';
      case 3:
        return 'Calafia';
      default:
        return '';
    }
  }
}

Route.propTypes = {
  data: PropTypes.object.isRequired
};
