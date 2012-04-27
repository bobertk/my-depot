# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

# 1st line: define page_load jQuery function ( the $) using the -> operator
# 2nd: find child images of class="store.entry", define click-event function(s)
# 3rd: process event - find parent of "this", find submit_btn and click on it 

$ -> 
  $('.store .entry > img').click ->
    $(this).parent().find(':submit').click()