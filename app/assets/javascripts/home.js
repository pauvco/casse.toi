window.onload = function(){

  var width = 0;
  if( typeof( window.innerWidth ) == 'number' ) {
    width = window.innerWidth;
  } else if( document.documentElement && ( document.documentElement.clientWidth || document.documentElement.clientHeight ) ) {
    width = document.documentElement.clientWidth;
  }

  if (width>1000){
    $('mainFrame').style.width="1080px";
    $('container').style.width="1080px";
  }
};
