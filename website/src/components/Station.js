import React, { Component, PropTypes} from 'react';

export default class Station extends Component {

  render(){

    return (
      <div>
        <div>
          {this.props.data.name}
        </div>
        <div>
          {this.getCategory(this.props.data.category)}
        </div>
        <div>
          <button onClick={e => this.handleClick(e)}>detalle</button>
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

Station.propTypes = {
  data: PropTypes.object.isRequired
};
