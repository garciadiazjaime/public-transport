import React, { Component, PropTypes} from 'react';

export default class Place extends Component {
  
  render(){

    return (
      <div>
        <div>
          {this.props.data.name}
        </div>
        <div>
          {this.props.data.category}
        </div>
        <div>
          <button onClick={e => this.handleClick(e)}>detalle</button>
        </div>
      </div>
    );
  }

  handleClick(e) {
    console.log('here', this.props.data);
  }
}

Place.propTypes = {
  data: PropTypes.object.isRequired
};