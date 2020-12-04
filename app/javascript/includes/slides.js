$(function(){
  var $activeSlide = $('#slides .slide:first-child');

  //show first slide
  // $activeSlide.addClass("showing");

  $("#decline").on("click", function(){
    console.log("decline")
    goToSlide(decline);
  });

  $("#approve").on("click", function(){
    console.log("approve")
    goToSlide(approve);
  });

  function goToSlide(action){
    $activeSlide.removeClass("showing");
    $activeSlide = $activeSlide.next(".slide");

    if(action == "approve") {
      console.log(action);
    } else {
      console.log(action);
    }

    $activeSlide.addClass("showing");
  }
});
