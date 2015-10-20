import React from 'react';

import PlacesList from './placesList';

export default function App() {
	const routesDummy = [{
		type: 'Camion',
		start: 'Centro',
		end: 'Playas',
		lat: 19.234,
		lng: 82.2134
	}];
  return (
    <div>
    	<PlacesList places={routesDummy} />
    </div>
  );
}
