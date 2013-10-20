# This function executes on page load.
# ready fires if people navigate to your page from within your site
# The second line defines a click event for every img
# The third line find the parent of this image that contains a button and click it

$(document).on "ready page:change", ->
  $('.store .entry > img').click ->
    $(this).parent().find(':submit').click()