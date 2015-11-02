import jquery from 'jquery';

export function getRoutes() {
  console.log('getRoutes');
  return (dispatch) => {
    dispatch({ type: 'GET_ROUTES_REQUEST'});
    $.get('http://127.0.0.1:8000/api/transport/lines/', function(data) {
      dispatch({ type: 'GET_ROUTES_RESPONSE', payload: data });   
    });
  }
}

const inititalState = {
  routes: []
};

export default function transport(state = inititalState, { type, payload}) {
  switch(type) {
    case "GET_ROUTES_RESPONSE":
      return {
        ...state,
        routes: payload
      };
    default:
      return state;
  }
}