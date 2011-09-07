// Author: Vidal van Bergen

(function($) {

  // These are really handy, unless someone doesn't have their javascripts on...
  
  // Detect platform ------------------
  if ( navigator.userAgent.indexOf('Windows') != -1 ) {
    $("html").addClass('windows');
  } else if ( navigator.userAgent.indexOf('Mac') != -1 ) {
    $("html").addClass('mac');
  } else if ( navigator.userAgent.indexOf('Linux') != -1 ) {
    $("html").addClass('linux');
  };

  // Detect Browser ------------------
  if ( navigator.userAgent.indexOf('Chrome') != -1 ) {
    $("html").addClass('chrome');
  } else if ( navigator.userAgent.indexOf('Safari') != -1 ) {
    $("html").addClass('safari');
  } else if ( navigator.userAgent.indexOf('Firefox') != -1 ) {
    $("html").addClass('firefox');
  } else if ( navigator.userAgent.indexOf('Opera') != -1 ) {
    $("html").addClass('opera');
  } else if ( navigator.userAgent.indexOf('MSIE') != -1 ) {

    // Detect IE ----------------------
    $("html").removeClass('no-ie');
    $("html").addClass('ie');

    if ( navigator.appVersion.indexOf('MSIE 10') != -1 ) {
      $("html").addClass('ie10 lte10 gt6 gt7 gt8 gt9 gte6 gte7 gte8 gte9');
    } else if ( navigator.appVersion.indexOf('MSIE 9') != -1 ) {
      $("html").addClass('ie9 lte10 lte9 gt8 gt7 gt6 gte6 gte7 gte8 gte9 lt10');
    } else if ( navigator.appVersion.indexOf('MSIE 8') != -1 ) {
      $("html").addClass('ie8 lte10 lte9 lte8 lt10 lt9 gt7 gt6 gte8 gte7 gte6');
    } else if ( navigator.appVersion.indexOf('MSIE 7') != -1 ) {
      $("html").addClass('ie7 lte10 lte9 lte8 lte7 lt10 lt9 lt8 gt6 gte7 gte6');
    } else if ( navigator.appVersion.indexOf('MSIE 6') != -1 ) {
      $("html").addClass('ie6 lte10 lte9 lte8 lte7 lte6 lt10 lt9 lt8 lt7 gte6');
    };
  };

  // Custom Scripts -------------------



})(jQuery);