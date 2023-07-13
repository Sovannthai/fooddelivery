$('.message a').click(function(){
   $('form').animate({height: "toggle", opacity: "toggle"}, "slow");
});


$('.filters li a').click(function() {
   var filter = $(this).data('filters');
   
   if (filter == '*') {
     $('.dishes .dish').show();
   } else {
     $('.dishes .dish').hide();
     $('.dishes .' + filter).show();  
   }
 })
