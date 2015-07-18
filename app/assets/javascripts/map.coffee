ready = ->

  return false unless $('#map').length

  map = L.mapbox.map('map', 'ashsp.mod1bmik', {
    accessToken: 'pk.eyJ1IjoiYXNoc3AiLCJhIjoiNzc5MmY3Mjk2MGFiMjIxMzM5YzkyNzQyNzg5ODk4NDIifQ.fJ1QjDAPsonHoOTraSmoAw'
  }).setView([37.9, -77], 5)

  map.touchZoom.disable();
  map.doubleClickZoom.disable();
  map.scrollWheelZoom.disable();

$(document).ready(ready)
$(document).on('page:load', ready)