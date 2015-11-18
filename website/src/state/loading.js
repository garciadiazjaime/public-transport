export default function loading(state = false, { type }) {
  switch(type) {
    case 'GET_ROUTES_REQUEST':
      return 'request_routes';
    case 'GET_STATIONS_REQUEST':
      return 'request_stations';
    case 'GET_ROUTES_RESPONSE':
    case 'GET_STATIONS_RESPONSE':
      return '';
    default:
      return state;
  }
}
