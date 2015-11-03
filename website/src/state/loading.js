export default function loading(state = false, { type }) {
  switch(type) {
    case 'GET_ROUTES_REQUEST':
      return true;
    case 'GET_ROUTES_RESPONSE':
      return false;
    default:
      return state;
  }
}
