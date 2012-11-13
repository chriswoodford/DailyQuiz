$(function() {
  
  $(window).load(function() {
    
    $('#loader').hide()
    $('#quiz').show()
        
  });

  $('#quiz form').submit(function() {
    
    var seconds = Math.round(new Date().getTime() / 1000);
    $('#quiz input[name="time_end"]').val(seconds);    
    return true;
    
  });
    
});
