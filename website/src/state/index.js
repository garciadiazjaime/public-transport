import { combineReducers } from 'redux';

import transport from './transport.js';
import loading from './loading.js';

export default combineReducers({
	transport,
	loading
});
