//= require active_admin/base
$(document).ready(function(){ 
  var dateFormat = $( ".datepicker" ).datepicker( "option", "dateFormat" ); 
  $( ".datepicker" ).datepicker( "option", "dateFormat", 'dd/mm/yy' ); 
});