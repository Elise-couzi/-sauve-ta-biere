import mapboxgl from 'mapbox-gl';
import 'mapbox-gl/dist/mapbox-gl.css';
import MapboxGeocoder from '@mapbox/mapbox-gl-geocoder';
import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css';

const initMapbox = () => {
  const mapElement = document.getElementById('map');

  const fitMapToMarkers = (map, markers) => {
    const bounds = new mapboxgl.LngLatBounds();
    
    markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
    map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 });
  };
  
  if (mapElement) { // only build a map if there's a div#map to inject into
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
    const map = new mapboxgl.Map({
      container: 'map',
      style: 'mapbox://styles/mapbox/streets-v10'
    });
    map.on('idle', () => {
      map.resize()
      })
    const markers = JSON.parse(mapElement.dataset.markers);
    console.log(mapElement.dataset.markers);
  
      markers.forEach((marker) => {
       
        const popup = new mapboxgl.Popup().setHTML(marker.info_window); 
        const element = document.createElement('div');
        element.className = 'marker';
        element.style.backgroundImage = `url('https://res.cloudinary.com/dduubmloj/image/upload/v1625071219/noun_map_orange_yo5jhg.svg')`;
        element.style.backgroundSize = 'contain';
        element.style.width = '45px';
        element.style.height = '45px';
        new mapboxgl.Marker(element)
          .setLngLat([ marker.lng, marker.lat ])
          .setPopup(popup)
          .addTo(map);
    });
    fitMapToMarkers(map, markers);
      map.addControl(new MapboxGeocoder({ accessToken: mapboxgl.accessToken,
        mapboxgl: mapboxgl }));
  }
};

export { initMapbox };