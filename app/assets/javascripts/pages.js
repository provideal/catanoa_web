jQuery(function($){
  $("#login").hide();

  var login_visible = function(visible){
    if (!visible) {
      $("#login").slideUp();
      $("#login_link").css({color: '#333333'});        
    } else {
      $("#login").slideDown();
      $("#login_link").css({color: '#29ABE2'});              
    }    
  };

  $("#login_link").click(function(){
    $.get('toggle_login', function(data){
      login_visible(data.login_visible);
    });
  });
  $(document).ready(function() {
    $("#accordion").accordion({active: false});
  });
});

