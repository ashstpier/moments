ready = ->
  $('input.datepicker').datetimepicker({
    timepicker: false,
    format: 'Y-m-d',
    inline: true,
    scrollInput: false,
    scrollMonth: false,
    todayButton: false,
    lazyInit: true,
    onChangeDateTime: (dp, $input) ->
      $('input#card_date').val($input.val())
  })

$(document).ready(ready)
$(document).on('page:load', ready)