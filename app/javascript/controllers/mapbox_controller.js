import { Controller } from "@hotwired/stimulus";
import mapboxgl from 'mapbox-gl';

export default class extends Controller {
  static values = {
    apiKey: String,
    markers: Array
  }

  connect() {
    mapboxgl.accessToken = this.apiKeyValue;

    this.map = new mapboxgl.Map({
      container: this.element,
      style: 'mapbox://styles/owenbaldwin/ckw4vs5vy2ntb14p4yeeyzcy8'
    });
    this._addMarkersToMap();
    this._fitMapToMarkers();

  }
  _addMarkersToMap() {
    this.markersValue.forEach((marker) => {
      const popup = new mapboxgl.Popup().setHTML(marker.info_window);

      const customMarker = document.createElement('div');
      customMarker.className = 'marker';
      customMarker.style.backgroundImage = `url('${marker.image_url}')`;
      // customMarker.style.backgroundSize = 'contain';
      customMarker.style.backgroundSize = 'contain';
      customMarker.style.width = '50px';
      customMarker.style.height = '50px';

      new mapboxgl.Marker(customMarker)
        .setLngLat([marker.lng, marker.lat])
        .setPopup(popup)
        .addTo(this.map);
    });
  }
  _fitMapToMarkers() {
    const bounds = new mapboxgl.LngLatBounds();
    this.markersValue.forEach(marker => bounds.extend([marker.lng, marker.lat]));
    this.map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 1000 });
  }

}


// ADD MARKERS

// connect() {
//   // [...]
//   this._addMarkersToMap();
// }

// _addMarkersToMap() {
//   this.markersValue.forEach((marker) => {
//     new mapboxgl.Marker()
//       .setLngLat([marker.lng, marker.lat])
//       .addTo(this.map);
//   });
// }



// FIT MAP TO MARKERS
// connect() {
//   // [...]
//   this._addMarkersToMap();
//   this._fitMapToMarkers();
// }

// [...]
// _fitMapToMarkers() {
//   const bounds = new mapboxgl.LngLatBounds();
//   this.markersValue.forEach(marker => bounds.extend([marker.lng, marker.lat]));
//   this.map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 });
// }
