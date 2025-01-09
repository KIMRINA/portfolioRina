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
.bgimg-1, .bgimg-2, .bgimg-3, .bgimg-4 {
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

/* Third image (SKILS) */
.bgimg-4 {
    background-image: url("https://i.imgur.com/7rTDEJ7.jpeg");
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
    .bgimg-1, .bgimg-2, .bgimg-3, .bgimg-4 {
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

/* 추가 */
  .project-padding {
    display: flex;
    flex-wrap: wrap; /* 여러 줄로 정렬 */
    gap: 30px; /* 프로젝트 간의 간격 */
    justify-content: center; /* 중앙 정렬 */
  }

  .project-item {
    background-color: #ffffff;
    width: 430px; /* 모든 프로젝트 아이템의 일정한 너비 */
    border-radius: 10px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    overflow: hidden; /* 내용이 넘치지 않도록 설정 */
    text-align: center;
    padding: 10px;
  }

  .project-item img {
    width: 100%; /* 이미지의 너비를 부모 요소에 맞춤 */
    height: 180px; /* 고정된 높이 설정 */
    object-fit: cover; /* 비율 유지하며 이미지 크기 조정 */
    border-radius: 10px 10px 0 0; /* 위쪽 모서리 둥글게 */
  }

  .project-item div {
    padding: 12px;
  }

  .project-item h2 {
    font-size: 18px;
    margin: 10px 0;
    font-weight: bold;
    color: #333;
  }

  .project-item p {
    font-size: 14px;
    color: #666;
    line-height: 1.5;
    margin: 5px 0;
  }

  .project-item p:last-child {
    margin-bottom: 0; /* 마지막 p 태그는 여백 제거 */
  }

@media screen and (max-width: 768px) {
  .project-item {
    flex: 1 1 100%; /* 작은 화면에서는 한 줄에 한 개씩 */
  }
}

/* 섹션 옮기는 버튼  */
.section-link {
    display: inline-block;
    cursor: pointer; /* 손 모양 커서 */
  }
.section-link:hover img {
    content: url('https://i.imgur.com/PJcDD0I.png'); /* 호버 시 다른 이미지로 변경 */
    transform: scale(1.1); /* 약간 확대 효과 (선택 사항) */
  }

/* 스킬 */
.skills-container {
    background-color: #f0f3f8;
    padding: 20px;
    border-radius: 10px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    width: 80%; /* 컨테이너 너비 조정 (화면의 80%) */
    max-width: 800px; /* 최대 너비 제한 */
    margin: 0 auto; /* 중앙 정렬 */
  }

  .skill-row {
    display: flex;
    align-items: center;
    margin-bottom: 20px;
  }

  .skill-category {
    display: flex;
    align-items: center;
    margin-right: 20px;
    width: 120px;
  }

  .skill-category img {
    width: 24px;
    height: 24px;
    margin-right: 10px;
  }

  .skill-tags {
    display: flex;
    flex-wrap: wrap;
    gap: 10px;
  }

  .skill-tag {
    background-color: rgba(66,133,244,.04);
    color: #000;
    padding: 5px 10px;
    border-radius: 20px;
    font-size: 14px;
    font-weight: bold;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.2);
    transition: transform 0.2s;
  }

  .skill-tag:hover {
    transform: scale(1.1);
  }

#profile { vertical-align: middle; }

/* 위로가기 버튼 스타일 */
.scroll-top {
    position: fixed;
    z-index: 50;
    bottom: 40px;
    right: 40px;
    width: 50px;
    height: 50px;
    cursor: pointer;
}
.scroll-top::before {
    content: '';
    position: absolute;
    top: 0;
    left: 0;
    width: 50px;
    height: 50px;
    border-radius: 50%;
    background: #3c3c3c;
    z-index: 1;
}
.scroll-top img {
    z-index: 10;
    display: block;
    position: absolute;
    top: 16px;
    left: 38%;
}
.scroll-top::after {
    content: '';
    position: absolute;
    top: -8px;
    left: -8px;
    width: 66px;
    height: 66px;
    box-shadow: 0px 0 20px 0 rgba(152, 152, 152, 0.6);
    z-index: -1;
    border-radius: 50%;
}
</style>
</head>
<body>

<!-- 위로가기 버튼 -->
<div class="scroll-top" onclick="scrollToTop()">
	<img src="https://i.imgur.com/IeUGL6b.png" alt="위로가기">
</div>

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
      <a href="#skils" class="w3-padding-large">SKILS</a>
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
	
  <h2 class="w3-center">
	<a class="w3-center section-link" aria-label="섹션 링크 버튼" onclick="scrollToSection('about')">
		<img alt="섹션 링크 아이콘" loading="lazy" decoding="async" src="https://imgur.com/maczufq.png" style="width: 40px; height: 40px;">
	</a>
  ABOUT ME
  </h2>
  <p class="w3-center"><em>Backend Developer Rina Kim</em></p>
    <div class="w3-col m6 w3-center w3-section">
      <img src="https://i.imgur.com/AnTMdHj.jpg" id="profile" class="w3-circle" alt="Photo of Me">
    </div>
  <p style="position: relative;top: 50px;">끊임없이 달려가고 있는<br>4년차 백엔드 개발자<br>김린아 입니다.</p>
  <!--  Profile Picture and Description  -->
  
  <br><br><br><br><br>
</div>

<!-- Second Parallax SKILS -->
<div class="bgimg-4 w3-display-container" id="skils">
  <div class="w3-display-middle">
    <span class="w3-xxlarge w3-text-light-grey w3-wide">SKILS</span>
  </div>
</div>
<!-- Container (SKILS Section) -->
<div class="w3-content w3-container w3-padding-64">
	<h2 class="w3-center">
		<a class="w3-center section-link" aria-label="섹션 링크 버튼" onclick="scrollToSection('skils')">
			<img alt="섹션 링크 아이콘" loading="lazy" decoding="async" src="https://imgur.com/maczufq.png" style="width: 40px; height: 40px;">
		</a>
	  SKILS
	</h2><br>
	<div class="skills-container">
	  <div class="skill-row">
	    <div class="skill-category">
	      <img src="https://i.imgur.com/4Wp8lsq.png" alt="Language Icon">
	      <span>Language</span>
	    </div>
	    <div class="skill-tags">
	      <span class="skill-tag">Java</span>
	      <span class="skill-tag">JavaScript</span>
	    </div>
	  </div>
	  
	  <div class="skill-row">
	    <div class="skill-category">
	      <img src="https://i.imgur.com/JF6q3Cd.png" alt="Backend Icon">
	      <span>Backend</span>
	    </div>
	    <div class="skill-tags">
	      <span class="skill-tag">Spring</span>
	      <span class="skill-tag">MyBatis</span>
	      <span class="skill-tag">JEUS</span>
	      <span class="skill-tag">전자정부프레임워크</span>
	    </div>
	  </div>
	  
	  <div class="skill-row">
	    <div class="skill-category">
	      <img src="https://i.imgur.com/uV3Ovr1.png" alt="Frontend Icon">
	      <span>Frontend</span>
	    </div>
	    <div class="skill-tags">
	      <span class="skill-tag">JSP</span>
	      <span class="skill-tag">JQuery</span>
	      <span class="skill-tag">HTML5/CSS</span>
	      <span class="skill-tag">Vue.js</span>
	    </div>
	  </div>
	  
	  <div class="skill-row">
	    <div class="skill-category">
	      <img src="https://i.imgur.com/wmHuSGf.png" alt="DevOps Icon">
	      <span>DB</span>
	    </div>
	    <div class="skill-tags">
	      <span class="skill-tag">Oracle</span>
	      <span class="skill-tag">MySQL</span>
	      <span class="skill-tag">Tibero</span>
	      <span class="skill-tag">PostgreSQL</span>
	    </div>
	  </div>
	</div>
	<br>

</div>

<!-- Second Parallax Image with Portfolio Text -->
<div class="bgimg-2 w3-display-container" id="portfolio">
  <div class="w3-display-middle">
    <span class="w3-xxlarge w3-text-light-grey w3-wide">PORTFOLIO</span>
  </div>
</div>

<!-- Container (Portfolio Section) -->
<div class="w3-content w3-container w3-padding-64">
	<h2 class="w3-center">
		<a class="w3-center section-link" aria-label="섹션 링크 버튼" onclick="scrollToSection('portfolio')">
			<img alt="섹션 링크 아이콘" loading="lazy" decoding="async" src="https://imgur.com/maczufq.png" style="width: 40px; height: 40px;">
		</a>
  	PROJECT
	</h2>
  <p class="w3-center"><em>저의 프로젝트 작업물 입니다.<br> 이미지를 클릭하시면 해당 사이트로 이동됩니다.<br>(내부망에서만 접속되는 일부 사이트는 이동불가)</em></p><br>

  <div class="w3-row-padding project-padding">

    <div class="project-item">
      <img src="https://i.imgur.com/xwx6IZ9.png" class="w3-hover-opacity">
      <div>
        <h2 class="w3-center">DGB금융지주 그룹유동성리스크 운영 업무</h2>
        <p>2024.07.29 - 2024.12.31</p>
        <p>지주 그룹사에 대한 유동성 리스크 모니터링 및 보고와 빅데이터에 대한 월/일 배치 작업 수행</p>
        <b>#Java #Spring #MyBatis #tiberoDB #PL/SQL</b>
      </div>
    </div>

    <!-- 추가 프로젝트 아이템들 -->
    <div class="project-item">
      <img src="https://i.imgur.com/KKDkBJj.png" class="w3-hover-opacity">
      <div>
        <h2 class="w3-center">2024년 원격교육연수지원센터 시스템 위탁운영</h2>
        <p>2024.03.01 - 2024.07.19</p>
        <p>PL직책으로 내용심사 운영 관리 시스템/원격교육연수원 이수자 정보관리 시스템 개발 및 운영(사이트 2개 개발 및 운영)</p>
        <b>#Java #Spring #MyBatis #Oracle #jsp #전자정부프레임워크</b>
      </div>
    </div>
    
    <div class="project-item">
      <img src="https://i.imgur.com/8FbIQo0.png" onclick='window.open("https://doran.edunet.net/main/view", "_blank")' class="w3-hover-opacity">
      <div>
        <h2 class="w3-center">2023년 학교(사이버)폭력예방 서비스 기능개선 및 유지관리</h2>
        <p>2023.08.01 - 2024.02.29</p>
        <p>PL직책으로 에듀넷 산하 도란도란, 사이버 학교 폭력 예방 교육 사이트 기능개선 및 운영(사이트 2개 운영)</p>
        <b>#Java #Spring #MyBatis #Oracle #jsp #전자정부프레임워크</b>
      </div>
    </div>
    
    <div class="project-item">
      <img src="https://i.imgur.com/ZHaZekX.png" onclick='window.open("https://class.nise.go.kr/hre/cm/mcom/pmco000b00.do", "_blank")' class="w3-hover-opacity">
      <div>
        <h2 class="w3-center">장애학생 원격교육 플랫폼 운영</h2>
        <p>2022.04.01 - 2023.07.31</p>
        <p>국립특수교육원 열린배움터 사이트 운영. 일부 신규 개발, 유지보수, 모니터링, SLA 관리, 보고서, 장애처리, 시스템 변경 등 수행</p>
        <b>#Java #Spring #ibatis #tibero #JavaScript #jQuery #JEUS #whatap #naverCloud</b>
      </div>
    </div>
    
    <div class="project-item">
      <img src="https://i.imgur.com/nAGE8y0.png" onclick='window.open("https://ycc.ac.kr/kor/Main.do", "_blank")' class="w3-hover-opacity">
      <div>
        <h2 class="w3-center">2021년 영진사이버대학 학습관리시스템 재구축</h2>
        <p>2021.07.19 - 2022.03.31</p>
        <p>업무지원 페이지(교수lms) 시스템 재구축 및 신규 개발, 마이그레이션, 퍼블리싱, 하자보수 운영 업무 수행</p>
        <b>#Java #jsp #oracle #JavaScript #jQuery #JEUS</b>
      </div>
    </div>
    
    <div class="project-item">
      <img src="https://i.imgur.com/v3ETjUM.png" class="w3-hover-opacity">
      <div>
        <h2 class="w3-center">전자결재 시스템 고도화</h2>
        <p>2021.05.01 - 2021.07.18</p>
        <p>퓨전소프트 내부 과제. 사내 전자 결재 시스템 고도화 및 운영 업무 수행</p>
        <b>#Java #Spring #Mybatis #MySQL</b>
      </div>
    </div>
    
<!--     <div class="project-item"> -->
<!--       <img src="https://i.imgur.com/DWBHVJX.png" onclick='window.open("https://github.com/KIMRINA/memoProject", "_blank")' class="w3-hover-opacity"> -->
<!--       <div> -->
<!--         <h2 class="w3-center">MEMOZZANG(개인 프로젝트)</h2> -->
<!--         <p>2021.04.01 - 2021.04.12</p> -->
<!--         <p>간단한 메모를 남기고, 메모를 캘린더별, 북마크별, 그래프별로 모아볼 수 있으며 타인메모도 엿 볼 수 있는 사이트.</p> -->
<!--         <p>#Java #Spring MVC Pattern #Spring security</p> -->
<!--       </div> -->
<!--     </div> -->
    
<!--     <div class="project-item"> -->
<!--       <img src="https://i.imgur.com/dTpyGwJ.png" onclick='window.open("https://github.com/dev1028/hair", "_blank")' class="w3-hover-opacity"> -->
<!--       <div> -->
<!--         <h2 class="w3-center">우리동네 미용실(개인 그룹 프로젝트)</h2> -->
<!--         <p>2020.09-15 - 2020.10.20</p> -->
<!--         <p>일반 회원이 우리동네의 미용실을 간편하게 예약가능 하고, 미용실 사업자 회원의 미용실까지 관리 해주는 사이트.</p> -->
<!--         <p>#Java #Front Controller Pattern #TTS #AWS #Bootstrap</p> -->
<!--       </div> -->
<!--     </div> -->
    
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
  <p class="w3-half">Made with <span class="heart-icon">❤</span> by RINA KIM</p>
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

function scrollToSection(sectionId) {
    const section = document.getElementById(sectionId);
    if (section) {
      section.scrollIntoView({ behavior: 'smooth', block: 'start' });
    }
  }
  
//버튼 요소 가져오기
var mybutton = document.getElementById("scrollTopBtn");

// 스크롤 위치가 일정 이상 내려가면 버튼이 보이도록 설정
window.onscroll = function() {
    if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
        mybutton.style.display = "block";
    } else {
        mybutton.style.display = "none";
    }
};

// 페이지를 맨 위로 스크롤하는 함수
function scrollToTop() {
    window.scrollTo({
        top: 0,
        behavior: "smooth"
    });
}

</script>
</body>
</html>
