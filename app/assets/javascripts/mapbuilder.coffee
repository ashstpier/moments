ready = ->

  return false unless $('#mapbuilder').length

  fullGeojson = []
  savedGeojson = $('#mapbuilder').data('geojson')
  L.mapbox.accessToken = 'pk.eyJ1IjoiYXNoc3AiLCJhIjoiNzc5MmY3Mjk2MGFiMjIxMzM5YzkyNzQyNzg5ODk4NDIifQ.fJ1QjDAPsonHoOTraSmoAw';

  map = L.mapbox.map('mapbuilder', 'ashsp.mod1bmik')
    .setView([51.507264, -0.127434], 16)
    .addControl(L.mapbox.geocoderControl('mapbox.places', {
      autocomplete: true
    }))

  map.touchZoom.disable()
  map.doubleClickZoom.disable()
  map.scrollWheelZoom.disable()

  unless savedGeojson == undefined
    markers = L.mapbox.featureLayer()
    .setGeoJSON(savedGeojson)
    .addTo(map)

    map.fitBounds(markers.getBounds());

  map.on 'click', (e) ->

    lat = e.latlng.lat
    lng = e.latlng.lng
    addMarker(lat, lng, 'test')

  addMarker = (lat, lng, name) ->
    marker = L.mapbox.featureLayer({
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

    saveGeojson(marker.getGeoJSON())

  saveGeojson = (geojson) ->
    fullGeojson.push(geojson)
    geojsonString = JSON.stringify(fullGeojson)
    $('#card_locations_attributes_0_geojson').text(geojsonString)


$(document).ready(ready)
$(document).on('page:load', ready)