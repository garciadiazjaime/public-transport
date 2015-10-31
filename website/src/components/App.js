import React from 'react';
import jquery from 'jquery';

import PlacesList from './PlacesList';


export default function App() {
  const routesDummy = [
    {
        "id": 1,
        "name": "Centro - Laureles",
        "category": 1
    },
    {
        "id": 2,
        "name": "Centro - Xico",
        "category": 1
    },
    {
        "id": 3,
        "name": "Centro - Flores",
        "category": 1
    },
    {
        "id": 4,
        "name": "Centro - Cumbres",
        "category": 1
    }
  ];
  $.get('http://api-mpublictransport.rhcloud.com/api/transport/lines/', function(data) {
    console.log('data', data);
  });
  return (
    <div>
      <PlacesList places={routesDummy} />
      <div>
        Details
      </div>
    </div>
  );
}

