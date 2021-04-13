<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
<link href='https://www.w3schools.com/lib/w3.css' rel='stylesheet' type='text/css'>
<link href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css' rel='stylesheet' type='text/css'>
<script src="https://maps.googleapis.com/maps/api/js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/smoothscroll/1.4.4/SmoothScroll.min.js"></script>

<style>
body,h1,h2,h3,h4,h5,h6 {font-family: "Lato", sans-serif;}
body, html {
    height: 100%;
    color: #777;
    line-height: 1.8;
}

/*Navbar Styles*/
.w3-navbar { color: #fff; }
.w3-navbar.w3-animate-top { color: #444; }
.w3-navbar li a:hover { background-color: rgba(0,0,0,0.2); color: #fff; }

/* Create a Parallax Effect */
.bgimg-1, .bgimg-2, .bgimg-3 {
    opacity: 0.7;
    background-attachment: fixed;
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
}

/* First image (Logo. Full height) */
.bgimg-1 {
    background-image: url('https://c2.staticflickr.com/6/5208/5308016251_3eaa8dc84d_b.jpg');
    min-height: 100%;
}

/* Second image (Portfolio) */
.bgimg-2 {
    background-image: url("https://www.w3schools.com/w3css/img_parallax2.jpg");
    min-height: 400px;
}

/* Third image (Contact) */
.bgimg-3 {
    background-image: url("http://unsplash.com/photos/TV2gg2kZD1o/download");
    min-height: 400px;
}

.w3-wide {letter-spacing: 10px;}
.w3-hover-opacity {cursor: pointer;}

#googleMap {
    width: 100%;
    height: 400px;
    -webkit-filter: grayscale(1);
    filter: grayscale(1);
}

/* Turn off parallax scrolling for tablets and mobiles */
@media only screen and (max-width: 1024px) {
    .bgimg-1, .bgimg-2, .bgimg-3 {
        background-attachment: scroll;
    }
}

/* About Section */
#about {
  font-size: 1.4em;
}

/* Heart Icon */
.heart-icon {
  color: #f77;
}


/* Clearfix Hack */
.cf:before,
.cf:after {
    content: " "; /* 1 */
    display: table; /* 2 */
}

.cf:after {
    clear: both;
}

/**
 * For IE 6/7 only
 * Include this rule to trigger hasLayout and contain floats.
 */
.cf {
    *zoom: 1;
}

/* Social Media Icons */
.w3-half > a {
  text-decoration: none;
}

i.fa {
  padding-top: .2em;
  padding-left: .5em;
  padding-right: .5em;
  taransition: color 1s;
}

.fa-fire:hover {
  color: #4a4;
}

.fa-facebook:hover {
  color: #04a;
}

.fa-codepen:hover {
  color: #4af;
}

#profile { vertical-align: middle; }
</style>
</head>
<body>

<!-- Author: Christian Pecson -->
<!-- Date: July 2, 2016 -->
<!-- Navbar (sit on top) -->
<div class="w3-top">
  <ul class="w3-navbar" id="myNavbar">
    <li><a href="#" class="w3-padding-large">RINA KIM</a></li>
    <li class="w3-hide-small w3-right">
      <a href="#contact" class="w3-padding-large">Contact</a>
    </li>
    <li class="w3-hide-small w3-right">
      <a href="#portfolio" class="w3-padding-large">Portfolio</a>
    </li>
    <li class="w3-hide-small w3-right">
      <a href="#about" class="w3-padding-large">About</a>
    </li>
  </ul>
</div>

<!-- First Parallax Image with Logo Text -->
<div class="bgimg-1 w3-opacity w3-display-container">
  <div class="w3-display-middle" style="white-space:nowrap;">
    <h1 class="w3-center w3-padding-xlarge w3-black w3-xlarge w3-wide w3-animate-opacity">&nbsp;RINAKIM <span class="w3-hide-small">PORTFOLIO</span></h1>
  </div>
</div>

<!-- Container (About Section) -->
<div class="w3-content w3-container w3-padding-64" id="about">
  <h2 class="w3-center">ABOUT ME</h2>
  <p class="w3-center"><em>저는 김린아입니다.</em></p>
    <div class="w3-col m6 w3-center w3-section">
      <img src="https://i.imgur.com/AnTMdHj.jpg" id="profile" class="w3-circle" alt="Photo of Me">
    </div>
  <p style="position: relative;top: 50px;">저는 멋진 웹 사이트를 만들고 세상에 유용한 것을 개발하는  꿈을 꾸는 몽상가이지만,<br>저의 포트폴리오를 통하여 그 꿈에 한발짝 디딜 수 있도록 도약하는 계기가 되었음 좋겠습니다.</p>
  <!--  Profile Picture and Description  -->
  
  <br><br><br><br><br>
<div class="w3-row">
  <h2 class="w3-center">SKILS</h2><br>
  	<p class="w3-center"><em>Back-end</em></p>
  	<div>
      <p style="text-align: center;">Java | C | C++ | JSP | Spring | Spring Security | MyBatis | Tomcat </p>
    </div>
  	<p class="w3-center"><em>Front-end</em></p>
    <div>
      <p style="text-align: center;">Javascript | JQuery | HTML5 | CSS3 | Bootstrap </p>
    </div>
    <p class="w3-center"><em>etc</em></p>
    <div>
      <p style="text-align: center;">Oracle | MySQL | GIT | Eclipse | VIM | Visual Studio | JIRA </p>
    </div>
    
  </div>
  
</div>

<!-- Second Parallax Image with Portfolio Text -->
<div class="bgimg-2 w3-display-container" id="portfolio">
  <div class="w3-display-middle">
    <span class="w3-xxlarge w3-text-light-grey w3-wide">PORTFOLIO</span>
  </div>
</div>

<!-- Container (Portfolio Section) -->
<div class="w3-content w3-container w3-padding-64" style="height: 850px;">
  <h2 class="w3-center">PROJECT</h2>
  <p class="w3-center"><em>저의 프로젝트 작업물 입니다.<br> 이미지를 클릭하시면 해당 git페이지로 이동됩니다.</em></p><br>

  <!-- Responsive Grid. Four columns on tablets, laptops and desktops. Will stack on mobile devices/small screens (100% width) -->
  <div class="w3-row-padding w3-center" style="width: 500px;height: 500px;">
    <div class="w3-col m3" style="width: 500px;">
      <img src="https://i.imgur.com/dTpyGwJ.png" onclick='window.open("https://github.com/dev1028/hair", target="_blank")' class="w3-hover-opacity" style="width: 500px;height: 300px;position: relative;left: -80px;">
    	<div id="div1" style="position: relative;left: -85px;">
    	<h2 class="w3-center">우리동네 미용실</h2>
    	<p>2020-09-15 ~ 2020-10-20</p>
    	<p>일반 회원이 우리동네의 미용실을 간편하게 예약가능 하고, 미용실 사업자 회원의 미용실까지 관리 해주는 사이트.</p>
    	<p>#Java #Front Controller Pattern #TTS #AWS #Bootstrap</p>
    	</div>
    </div>

  </div>

  <div class="w3-row-padding w3-center w3-section" style="position: relative;top: -524px;left: 500px;width: 500px;height: 500px;">
    <div class="w3-col m3" style="width: 500px;">
      <img src="https://i.imgur.com/DWBHVJX.png" onclick='window.open("https://github.com/KIMRINA/memoProject", target="_blank")' class="w3-hover-opacity" style="width: 500px;height: 300px;">
      <h2 class="w3-center">MEMOZZANG</h2>
      <p>2021-04-01 ~ 2021-04-12</p>
      <p>간단한 메모를 남기고, 메모를 캘린더별, 북마크별, 그래프별로 모아볼 수 있으며 타인메모도 엿 볼 수 있는 사이트.</p>
      <p>#Java #Spring MVC Pattern #Spring security</p>
    </div>

  </div>
</div>

<!-- Modal for full size images on click-->
<div id="modal01" class="w3-modal w3-black" onclick="this.style.display='none'">
  <span class="w3-closebtn w3-hover-red w3-text-white w3-xxxlarge w3-container w3-display-topright">×</span>
  <div class="w3-modal-content w3-animate-zoom w3-center w3-transparent w3-padding-64">
    <img id="img01" style="max-width:100%">
  </div>
</div>

<!-- Third Parallax Image with Portfolio Text -->
<div class="bgimg-3 w3-display-container" id="contact">
  <div class="w3-display-middle">
    <h2 class="w3-xxlarge w3-text-light-grey w3-wide">CONTACT</h2>
  </div>
</div>

<!-- Container (Contact Section) -->
<div class="w3-content w3-container w3-padding-64">
  <h3 class="w3-center">CONTACT ME</h3>
  <p class="w3-center"><em>I'd love your feedback!</em></p>

  <address class="w3-row w3-padding-32 w3-section">
    <div class="w3-col m4 w3-container">
      <!-- Add Google Maps -->
      <div id="googleMap" class="w3-round-large"></div>
    </div>
    <div class="w3-col m8 w3-container w3-section">
      <div class="w3-large w3-margin-bottom">
        <i class="fa fa-map-marker w3-hover-text-black" style="width:30px"></i> Daegu, Korea<br>
        <i class="fa fa-phone w3-hover-text-black" style="width:30px"></i> Phone: +82 010 8555 9988<br>
        <i class="fa fa-envelope w3-hover-text-black" style="width:30px"> </i> Email: aem205@gmail.com<br>
        <i class="fa fa-github w3-hover-text-black" style="width:30px"> </i> Github: <a href="https://github.com/KIMRINA" target="_blank">https://github.com/KIMRINA</a><br>
      </div>
      <p>메일 보내기 :</p>
      <div class="w3-row-padding" style="margin:0 -16px 8px -16px">
        <div class="w3-half">
          <input class="w3-input w3-border w3-hover-light-grey" type="text" placeholder="Name">
        </div>
        <div class="w3-half">
          <input class="w3-input w3-border w3-hover-light-grey" type="text" placeholder="Email">
        </div>
      </div>
      <input class="w3-input w3-border w3-hover-light-grey" type="text" placeholder="Comment">
      <a href="mailto:aem205@gmail.com" class="w3-btn w3-section w3-right">SEND</a>
    </div>
  </address>
</div>

<!-- Footer -->
<footer class="w3-center w3-dark-grey w3-padding-48 w3-hover-black cf">
  <div class="w3-half">
  </div>
  <p class="w3-half">Made with <span class="heart-icon">❤</span> by Christian Pecson and Powered by <a href="https://www.w3schools.com/w3css/default.asp" title="W3.CSS" target="_blank" class="w3-hover-opacity">w3.css</a></p>
</footer>


<script>
//Smooth Scroll on anchor links
(function() {

     'use strict';

    // Feature Test
    if ( 'querySelector' in document && 'addEventListener' in window && Array.prototype.forEach ) {

        // Function to animate the scroll
        var smoothScroll = function (anchor, duration) {

            // Calculate how far and how fast to scroll
            var startLocation = window.pageYOffset;
            var endLocation = anchor.offsetTop;
            var distance = endLocation - startLocation;
            var increments = distance/(duration/16);
            var stopAnimation;

            // Scroll the page by an increment, and check if it's time to stop
            var animateScroll = function () {
                window.scrollBy(0, increments);
                stopAnimation();
            };

            // If scrolling down
            if ( increments >= 0 ) {
                // Stop animation when you reach the anchor OR the bottom of the page
                stopAnimation = function () {
                    var travelled = window.pageYOffset;
                    if ( (travelled >= (endLocation - increments)) || ((window.innerHeight + travelled) >= document.body.offsetHeight) ) {
                        clearInterval(runAnimation);
                    }
                };
            }
            // If scrolling up
            else {
                // Stop animation when you reach the anchor OR the top of the page
                stopAnimation = function () {
                    var travelled = window.pageYOffset;
                    if ( travelled <= (endLocation || 0) ) {
                        clearInterval(runAnimation);
                    }
                };
            }

            // Loop the animation function
            var runAnimation = setInterval(animateScroll, 16);
       
        };

        // Define smooth scroll links
        var scrollToggle = document.querySelectorAll('.scroll');

        // For each smooth scroll link
        [].forEach.call(scrollToggle, function (toggle) {

            // When the smooth scroll link is clicked
            toggle.addEventListener('click', function(e) {

                // Prevent the default link behavior
                e.preventDefault();

                // Get anchor link and calculate distance from the top
                var dataID = toggle.getAttribute('href');
                var dataTarget = document.querySelector(dataID);
                var dataSpeed = toggle.getAttribute('data-speed');

                // If the anchor exists
                if (dataTarget) {
                    // Scroll to the anchor
                    smoothScroll(dataTarget, dataSpeed || 500);
                }

            }, false);

        });

    }

 })();

//Smooth Scroll
SmoothScroll({
    // Scrolling Core
    animationTime    : 400, // [ms]
    stepSize         : 100, // [px]

    // Acceleration
    accelerationDelta : 50,  // 50
    accelerationMax   : 3,   // 3

    // Keyboard Settings
    keyboardSupport   : true,  // option
    arrowScroll       : 50,    // [px]

    // Pulse (less tweakable)
    // ratio of "tail" to "acceleration"
    pulseAlgorithm   : true,
    pulseScale       : 4,
    pulseNormalize   : 1,

    // Other
    touchpadSupport   : false, // ignore touchpad by default
    fixedBackground   : true, 
    excluded          : ''    
});

// Google Maps
var myCenter = new google.maps.LatLng(35.829744, 128.565318);

function initialize() {
  var mapProp = {
    center: myCenter,
    zoom: 12,
    scrollwheel: false,
    draggable: false,
    mapTypeId: google.maps.MapTypeId.ROADMAP
  };

  var map = new google.maps.Map(document.getElementById("googleMap"), mapProp);

  var marker = new google.maps.Marker({
    position: myCenter,
  });

  marker.setMap(map);
}

google.maps.event.addDomListener(window, 'load', initialize);
/* 
// Modal Image Gallery
function onClick(element) {
  document.getElementById("img01").src = element.src;
  document.getElementById("modal01").style.display = "block";
}
 */
//팝업 Close 기능
function close_pop(url) {
	window.location.href = url;
};

// Change style of navbar on scroll
window.onscroll = function() {
  myFunction()
};

function myFunction() {
  var navbar = document.getElementById("myNavbar");
  if (document.body.scrollTop > 100 || document.documentElement.scrollTop > 100) {
    navbar.className = "w3-navbar" + " w3-card-2" + " w3-animate-top" + " w3-white";
  } else {
    navbar.className = navbar.className.replace(" w3-card-2 w3-animate-top w3-white", "");
  }
}

</script>
</body>
</html>
