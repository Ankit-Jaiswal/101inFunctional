window.onscroll = function() {myFunction()};

function myFunction() {
  var winScroll = document.body.scrollTop || document.documentElement.scrollTop;
  var height = document.documentElement.scrollHeight - document.documentElement.clientHeight;
  var scrolled = (winScroll / height) * 100;
  if (document.body.scrollTop > 80 || document.documentElement.scrollTop > 80) {
    document.getElementById("banner").style.fontSize = "80%";
    document.getElementById("tagline").style.display = "none";
  } else {
    document.getElementById("banner").style.fontSize = "130%";
    document.getElementById("tagline").style.display = "inherit";
  }
  document.getElementById("progress-bar").style.width = scrolled + "%";
}

