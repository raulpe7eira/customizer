# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on 'turbolinks:load', ->
  hideOptions= (selectedType) ->
    if selectedType is '3'
      $('#custom_field_options_id').show()
    else
      $('#custom_field_options_id').hide()

  $custom_field_type_id= $('#custom_field_type_id')

  $custom_field_type_id.change ->
    hideOptions($(this).val())

  hideOptions($custom_field_type_id.val())
