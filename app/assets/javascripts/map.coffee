ready = ->

  return false unless $('#map').length

  geojson = $('#map').data('geojson')
  L.mapbox.accessToken = 'pk.eyJ1IjoiYXNoc3AiLCJhIjoiNzc5MmY3Mjk2MGFiMjIxMzM5YzkyNzQyNzg5ODk4NDIifQ.fJ1QjDAPsonHoOTraSmoAw';

  map = L.mapbox.map('map', 'ashsp.mod1bmik')
    .setView([37.8, -96], 16)

  map.touchZoom.disable()
  map.doubleClickZoom.disable()
  map.scrollWheelZoom.disable()

  markers = L.mapbox.featureLayer()
    .setGeoJSON(geojson)
    .addTo(map)

  map.fitBounds(markers.getBounds());


$(document).ready(ready)
$(document).on('page:load', ready)