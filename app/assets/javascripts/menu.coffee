ready = ->
  $('#menu-toggle, #overlay').click (e) ->
    e.preventDefault()
    $('body').toggleClass('menu-open')

  $("#nav").headroom({
    offset : 50
  });

$(document).ready(ready)
$(document).on('page:load', ready)