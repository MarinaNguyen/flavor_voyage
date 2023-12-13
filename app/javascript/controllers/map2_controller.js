import { Controller } from "@hotwired/stimulus"
import mapboxgl from 'mapbox-gl'


export default class extends Controller {
  static values = {
    apiKey: String,
    marker: Object
  }

  connect() {
    mapboxgl.accessToken = this.apiKeyValue

    this.map2 = new mapboxgl.Map({
      container: this.element,
      style: "mapbox://styles/mapbox/streets-v10"
    })
    this.#addMarkersToMap()
    this.#fitMapToMarkers()
  }
  #addMarkersToMap() {
      const popup = new mapboxgl.Popup().setHTML(this.markerValue.info_window_html)

      new mapboxgl.Marker()
        .setLngLat([ this.markerValue.lng, this.markerValue.lat ])
        .setPopup(popup)
        .addTo(this.map2)
  }

  #fitMapToMarkers() {
    const bounds = new mapboxgl.LngLatBounds()
    bounds.extend([ this.markerValue.lng, this.markerValue.lat ])
    this.map2.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 })
  }
}
