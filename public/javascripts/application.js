function raisePic(pic) {
  //min speed = 24 sec, max is 60 sec
  speed = ((Math.random() * 100000) % 24000) + 36000;
  pic.animate({
    bottom: parseInt(pic.css('bottom')) + 2000
  }, speed);
}

function pullPic() {
  $.getJSON("http://localhost:3000/flickr/grab_pic", 
    function(data) {
      pic = $('<img/>').attr('src', data.url).
      css({
        'position': 'absolute',
        'bottom': data.height * -1,
        'z-index': data.zindex,
        'left': data.left
      }).appendTo('body');
      raisePic(pic);
    }
  );
  setTimeout('pullPic()', 3000);
}
