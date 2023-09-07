import { Controller } from "@hotwired/stimulus"
import mapboxgl from 'mapbox-gl'
import MapboxGeocoder from "@mapbox/mapbox-gl-geocoder"

// Connects to data-controller="map"
export default class extends Controller {
  static values = {
    apiKey: String,
    markers: Array
  }

  // Define shopCardMarkers as a property of the class
  shopCardMarkers = {};
  selectedMarker = null; // Track the currently selected marker

  connect() {
    mapboxgl.accessToken = this.apiKeyValue

    this.map = new mapboxgl.Map({
      container: this.element,
      style: "mapbox://styles/mapbox/streets-v10"
    })

    this.#addMarkersToMap()
    this.#fitMapToMarkers()

    this.map.addControl(new MapboxGeocoder({ accessToken: mapboxgl.accessToken,
      mapboxgl: mapboxgl }))

  }

  #addMarkersToMap() {
    this.markersValue.forEach((marker, index) => {
      const popup = new mapboxgl.Popup().setHTML(marker.info_window_html)

      const customMarker = document.createElement("div")
      customMarker.innerHTML = marker.marker_html

      const anchor = 'bottom';

      customMarker.addEventListener("click", () => {
        // Retrieve the associated shop card using the object
        const shopCard = this.shopCardMarkers[index + 1];

        // Check if a marker was previously selected
        if (this.selectedMarker) {
          // Remove the 'active' class from the previously selected marker
          this.selectedMarker.classList.remove("active");
        }

        // Toggle the 'active' class on the currently selected shop card
        shopCard.classList.toggle("active");

        // Update the currently selected marker
        this.selectedMarker = shopCard;
      });

      new mapboxgl.Marker(customMarker, { anchor })
        .setLngLat([ marker.lng, marker.lat ])
        .setPopup(popup)
        .addTo(this.map);

      // Store the association in the object
      this.shopCardMarkers[index + 1] = document.querySelector(`[data-shop-id="${index + 1}"]`);
    });
  }

  #fitMapToMarkers() {
    const bounds = new mapboxgl.LngLatBounds()
    this.markersValue.forEach(marker => bounds.extend([ marker.lng, marker.lat ]))
    this.map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 })
  }

}
