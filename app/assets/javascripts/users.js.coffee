jQuery ->
  $('#profilePage a.edit_info').click ->
    !$($(@).parent().children('input')).removeClass('hidden')
  $('#profilePage input').blur ->
    if @.value != $(@).parent().children('span').html()
      $('.edit_profile').submit()
    $(@).addClass('hidden')
    $(@).parent().children('span').html(@.value)