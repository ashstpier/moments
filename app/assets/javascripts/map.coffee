ready = ->

  return false unless $('#map').length

  lat = $('#map').data('lat')
  lng = $('#map').data('lng')
  name = $('#map').data('name')

  console.log lat

  L.mapbox.accessToken = 'pk.eyJ1IjoiYXNoc3AiLCJhIjoiNzc5MmY3Mjk2MGFiMjIxMzM5YzkyNzQyNzg5ODk4NDIifQ.fJ1QjDAPsonHoOTraSmoAw';

  map = L.mapbox.map('map', 'ashsp.mod1bmik')
    .setView([lat, lng], 16)
    .addControl(L.mapbox.geocoderControl('mapbox.places', {
      autocomplete: true
    }))

  map.touchZoom.disable()
  map.doubleClickZoom.disable()
  map.scrollWheelZoom.disable()

  L.mapbox.featureLayer({
    type: 'Feature',
    geometry: {
      type: 'Point',
      coordinates: [lng, lat]
    },
    properties: {
      title: name,
      'marker-size': 'large',
      'marker-color': '#222',
      'marker-symbol': 'circle-stroked'
    }
  }).addTo(map)

$(document).ready(ready)
$(document).on('page:load', ready)