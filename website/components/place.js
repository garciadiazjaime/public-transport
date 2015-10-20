import React, { Component, PropTypes} from 'react';

export default class Place extends Component {
  
  render(){

    return (
      <div>
        <div>
          {this.props.data.type}
        </div>
        <div>
          {this.props.data.start}
        </div>
        <div>
          {this.props.data.end}
        </div>
        <div>
          <a href="">google</a>
        </div>
      </div>
    );
  }
}

Place.propTypes = {
  data: PropTypes.object.isRequired
};