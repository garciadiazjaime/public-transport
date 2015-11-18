import jquery from 'jquery';

export function getRoutes() {
  return (dispatch) => {
    dispatch({ type: 'GET_ROUTES_REQUEST'});
    $.get('http://127.0.0.1:8000/api/transport/lines/', function(data) {
      dispatch({ type: 'GET_ROUTES_RESPONSE', payload: data });
    });
  }
}

export function setRoute(route) {
  return {
    type: 'SET_ROUTE',
    payload: route
  };
}

const inititalState = {
  routes: [],
  route: null
};

export default function transport(state = inititalState, { type, payload}) {
  switch(type) {
    case 'GET_ROUTES_RESPONSE':
      return {
        ...state,
        routes: payload
      };
    case 'SET_ROUTE':
      return {
        ...state,
        route: payload
      }
    default:
      return state;
  }
}
