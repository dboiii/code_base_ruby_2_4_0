var mql = window.matchMedia("screen and (max-width: 1024px)")
if (mql.matches){
  $(function(){
    $(".navbar-expand-toggle").ready(function(){
      $(".navbar-expand-toggle").toggleClass("fa-rotate-90");
      return $(".app-container").toggleClass("expanded");
    });
    $(".navbar-expand-toggle").click(function() {
      $(".app-container").toggleClass("expanded");
      return $(".navbar-expand-toggle").toggleClass("fa-rotate-90");
    });
    $(".navbar-right-expand-toggle").click(function() {
      $(".navbar-right").toggleClass("expanded");
      return $(".navbar-right-expand-toggle").toggleClass("fa-rotate-90");
    });
  });
}
else
{
  $(function() {
    $(".navbar-expand-toggle").click(function() {
      $(".app-container").toggleClass("expanded");
      return $(".navbar-expand-toggle").toggleClass("fa-rotate-90");
    });
    $(".navbar-right-expand-toggle").click(function() {
      $(".navbar-right").toggleClass("expanded");
      return $(".navbar-right-expand-toggle").toggleClass("fa-rotate-90");
    });
  });
}
// $(function() {
//   $(".navbar-expand-toggle").click(function() {
//     $(".app-container").toggleClass("expanded");
//     return $(".navbar-expand-toggle").toggleClass("fa-rotate-90");
//   });
//   return $(".navbar-right-expand-toggle").click(function() {
//     $(".navbar-right").toggleClass("expanded");
//     return $(".navbar-right-expand-toggle").toggleClass("fa-rotate-90");
//   });
// });

$(function() {
  return $('.toggle-checkbox').bootstrapSwitch({
    size: "small"
  });
});

$(function() {
  return $('.match-height').matchHeight();
});

$(function() {
  return $('.datatable').DataTable({
    "dom": '<"top"fl<"clear">>rt<"bottom"ip<"clear">>'
  });
});

$(function() {
  return $(".side-menu .nav .dropdown").on('show.bs.collapse', function() {
    return $(".side-menu .nav .dropdown .collapse").collapse('hide');
  });
});
$(function() {
  $("#btn-resolve").click(function(){
    $(".issue_note_log label").text("Note log");
    $(".issue_note_log").removeClass("has-error");
  });
});
// $(function(){
//   $(".app-container .content-container .side-menu .navbar-nav li.dropdown ul li").hover(function(){
//     //alert("asd");
//     //$(this).closest('panel panel-default dropdown').css('background-color','red');
//     // $(this).closest('.panel-default > a').find( ".title" ).css('color','red');
//     $(this).parent().parent().parent().siblings('a').css('color','red');
//     $(this).parent().parent().parent().siblings('a').children('.title').css('color','red');
//   },function(){
//         $(this).parent().parent().parent().siblings('a').css('color','black');
//     $(this).parent().parent().parent().siblings('a').children('.title').css('color','black');

//   });
// });

$(function(){
  $(".app-container .content-container .side-menu .navbar-nav li.dropdown").hover(function(){
    //alert();
    $(this).children('a').css('color','#ee1c25');
    $(this).children('a').children('.title').css('color','#ee1c25');
  },function(){
    $(this).children('a').css('color','#414141');
    $(this).children('a').children('.title').css('color','#414141');
  });
});
