ready = ->
  $('#menu-toggle, #overlay').click (e) ->
    e.preventDefault()
    $('body').toggleClass('menu-open')

$(document).ready(ready)
$(document).on('page:load', ready)