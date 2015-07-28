ready = ->

  return false unless $('#mapbuilder').length

  savedGeojson = $('#mapbuilder').data('geojson')
  currentMarker = null
  markerId = 0

  buildMap = ->
    L.mapbox.accessToken = 'pk.eyJ1IjoiYXNoc3AiLCJhIjoiNzc5MmY3Mjk2MGFiMjIxMzM5YzkyNzQyNzg5ODk4NDIifQ.fJ1QjDAPsonHoOTraSmoAw';

    map = L.mapbox.map('mapbuilder', 'ashsp.mod1bmik')
      .setView([51.507264, -0.127434], 14)
      .addControl(L.mapbox.geocoderControl('mapbox.places', {
        autocomplete: true
      }))

    map.touchZoom.disable()
    map.doubleClickZoom.disable()
    map.scrollWheelZoom.disable()

    unless savedGeojson == undefined or savedGeojson == ''
      markers = L.mapbox.featureLayer()
      .setGeoJSON(savedGeojson)
      .addTo(map)

      markers.eachLayer (layer) ->
        createContent(layer, markerId, layer.feature.properties.name)

      map.fitBounds(markers.getBounds());
    else
      if navigator.geolocation
        map.locate()

    return map


  toggleMarker = () ->
    $('#mapbuilder').toggleClass('addmarker')
    $('.add-marker, .cancel-marker').toggleClass('active')

  addMarker = (lat, lng) ->
    markerId += 1

    marker = L.mapbox.featureLayer({
      type: 'Feature',
      geometry: {
        type: 'Point',
        coordinates: [lng, lat]
      },
      properties: {
        'marker-size': 'large',
        'marker-color': '#444A6F',
        'markerId': markerId
      }
    }).addTo(map)

    createContent(marker, markerId)
    marker.openPopup();

  createContent = (marker, id, name="") ->
    content = """<div class="map-popup" data-marker-id="#{id}">
      <label>Location:</label>
      <input type="text" class="marker-input" value="#{name}" />
      <a href="#" class="delete-marker"><i class="fa fa-times-circle"></i> delete</a>
    </div>"""

    marker.bindPopup(content, {
      closeButton: false
    })

  saveGeojson = ->
    fullGeojson = []
    map.eachLayer (layer) ->
      if layer instanceof L.Marker
        geojson = layer.feature
        fullGeojson.push(geojson)

    geojsonString = JSON.stringify(fullGeojson)
    $('#card_location_attributes_geojson').val(geojsonString)

  initEvents = ->
    map.on 'click', (e) ->
      lat = e.latlng.lat
      lng = e.latlng.lng

      if $('#mapbuilder').hasClass('addmarker')
        addMarker(lat, lng)
        saveGeojson()
        toggleMarker()

    map.on 'locationfound', (e) ->
      map.fitBounds(e.bounds)
      map.setZoom(18)

    $('.marker-button a').on "click", (e) ->
      e.preventDefault()
      toggleMarker()

    $('#mapbuilder').on "input", ".map-popup input", (e) ->
      name = e.target.value
      markerId = $(e.target).closest('.map-popup').data('marker-id')
      map.eachLayer (layer) ->
        if layer instanceof L.Marker
          if layer.feature.properties.markerId == markerId
            layer.feature.properties.name = name
            createContent(layer, markerId, name)

      saveGeojson()

    $('#mapbuilder').on "click", ".map-popup .delete-marker", (e) ->
      e.preventDefault()
      markerId = $(e.target).closest('.map-popup').data('marker-id')
      map.eachLayer (layer) ->
        if layer instanceof L.Marker
          if layer.feature.properties.markerId == markerId
            layer.closePopup()
            $('.leaflet-popup').hide()
            map.removeLayer(layer)

      saveGeojson()


  map = buildMap()
  initEvents()

$(document).ready(ready)
$(document).on('page:load', ready)