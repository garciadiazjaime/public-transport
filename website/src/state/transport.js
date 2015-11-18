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
  return (dispatch) => {
    dispatch({ type: 'GET_STATIONS_REQUEST'});
    $.get('http://127.0.0.1:8000/api/transport/stations/?line=' + route.id, function(data) {
      dispatch({ type: 'GET_STATIONS_RESPONSE', payload: {route: route, stations: data} });
    });
  }
}

const inititalState = {
  routes: [],
  route: null,
  stations: []
};

export default function transport(state = inititalState, { type, payload}) {
  switch(type) {
    case 'GET_ROUTES_RESPONSE':
      return {
        ...state,
        routes: payload
      };
    case 'GET_STATIONS_RESPONSE':
      return {
        ...state,
        route: payload.route,
        stations: payload.stations
      };
    default:
      return state;
  }
}
