<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%
String referer = request.getHeader("referer");
 if(referer==null)referer = "/";
 %>
<!DOCTYPE html><html lang='en' class=''>
<head><script src='//static.codepen.io/assets/editor/live/console_runner-ce3034e6bde3912cc25f83cccb7caa2b0f976196f2f2d52303a462c826d54a73.js'></script><script src='//static.codepen.io/assets/editor/live/css_live_reload_init-890dc39bb89183d4642d58b1ae5376a0193342f9aed88ea04330dc14c8d52f55.js'></script><meta charset='UTF-8'><meta name="robots" content="noindex"><link rel="shortcut icon" type="image/x-icon" href="//static.codepen.io/assets/favicon/favicon-8ea04875e70c4b0bb41da869e81236e54394d63638a1ef12fa558a4a835f1164.ico" /><link rel="mask-icon" type="" href="//static.codepen.io/assets/favicon/logo-pin-f2d2b6d2c61838f7e76325261b7195c27224080bc099486ddd6dccb469b8e8e6.svg" color="#111" /><link rel="canonical" href="https://codepen.io/DevItWithDavid/pen/qrgdMY?editors=1111" />

<link rel='stylesheet prefetch' href='https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css'><link rel='stylesheet prefetch' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css'><link rel='stylesheet prefetch' href='https://fonts.googleapis.com/css?family=Open+Sans'>
<style class="cp-pen-styles">/* ============== BASE ============== */
html, body {
  height: 100%;
}

body {
  position: relative;
  -webkit-font-smoothing: antialiased;
  background-color: #ddd;
}

/* ============== VARIABLES ============== */
/* ============== COMPONENTS ============== */
.client {
  height: 700px;
  width: 1100px;
  position: absolute;
  top: 50%;
  left: 50%;
  -webkit-transform: translate(-50%, -50%);
          transform: translate(-50%, -50%);
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  background: url(https://i.ytimg.com/vi/V2qpVcPTGP8/maxresdefault.jpg) no-repeat center/cover;
  font-family: "Open Sans", sans-serif;
  -webkit-box-shadow: 0 10px 30px rgba(0, 0, 0, 0.7);
          box-shadow: 0 10px 30px rgba(0, 0, 0, 0.7);
  border-top: 2px solid #785a28;
}

#galio {
  position: absolute;
  top: 50%;
  left: 60%;
  -webkit-transform: translate(-50%, -50%);
          transform: translate(-50%, -50%);
  z-index: -1;
}

img.logo {
  height: 50px;
}

.animation {
  -webkit-box-flex: 10;
      -ms-flex: 10;
          flex: 10;
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-orient: vertical;
  -webkit-box-direction: normal;
      -ms-flex-flow: column nowrap;
          flex-flow: column nowrap;
  -webkit-box-pack: justify;
      -ms-flex-pack: justify;
          justify-content: space-between;
  position: relative;
  overflow: hidden;
}
.animation__controls {
  z-index: 2;
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-align: center;
      -ms-flex-align: center;
          align-items: center;
  padding: 30px;
  background-image: -webkit-gradient(linear, left bottom, left top, from(rgba(0, 0, 0, 0.7)), to(transparent));
  background-image: linear-gradient(to top, rgba(0, 0, 0, 0.7), transparent);
  font-size: 12px;
}
.animation__controls img.logo {
  padding-right: 20px;
  border-right: 1px solid #777;
}
.animation__reset {
  padding: 0 20px;
  -webkit-transform: rotate(75deg);
          transform: rotate(75deg);
}
.animation__toggles {
  height: 43px;
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-orient: vertical;
  -webkit-box-direction: normal;
      -ms-flex-flow: column nowrap;
          flex-flow: column nowrap;
  -webkit-box-pack: justify;
      -ms-flex-pack: justify;
          justify-content: space-between;
}
.animation__toggles > div {
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-align: center;
      -ms-flex-align: center;
          align-items: center;
}
.animation__toggles label {
  margin-left: 5px;
}

.login {
  -webkit-box-flex: 2;
      -ms-flex: 2;
          flex: 2;
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-orient: vertical;
  -webkit-box-direction: normal;
      -ms-flex-flow: column nowrap;
          flex-flow: column nowrap;
  -webkit-box-pack: justify;
      -ms-flex-pack: justify;
          justify-content: space-between;
  padding: 5px 15px;
  background-color: #010a13;
  border-left: 1px solid #797979;
}
.login__window-controls {
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-pack: end;
      -ms-flex-pack: end;
          justify-content: flex-end;
}
.login__window-controls > .btn {
  color: #797979;
}
.login__window-controls > .btn:not(:first-child) {
  padding-left: 30px;
}
.login img.logo {
  -ms-flex-item-align: center;
      align-self: center;
  margin-top: 20px;
}
.login__forms {
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-orient: vertical;
  -webkit-box-direction: normal;
      -ms-flex-flow: column nowrap;
          flex-flow: column nowrap;
  -webkit-box-pack: justify;
      -ms-flex-pack: justify;
          justify-content: space-between;
}
.login__forms h4 {
  text-transform: uppercase;
  color: #797979;
  font-family: "Georgia", sans-serif;
}
.login__forms label {
  margin-bottom: 2px;
}
.login__forms .username,
.login__forms .password {
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-orient: vertical;
  -webkit-box-direction: normal;
      -ms-flex-flow: column nowrap;
          flex-flow: column nowrap;
}
.login__forms .remember {
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-align: center;
      -ms-flex-align: center;
          align-items: center;
}
.login__forms .region {
  margin-top: 20px;
}
.login__links {
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-orient: vertical;
  -webkit-box-direction: normal;
      -ms-flex-flow: column nowrap;
          flex-flow: column nowrap;
  margin-top: auto;
  margin-bottom: 10px;
}
.login__links > a {
  text-decoration: none;
  color: #13a7bb;
  font-size: 12px;
  font-weight: 500;
  margin-bottom: 6px;
}
.login__links > a:last-child {
  margin-top: 5px;
  color: #eed28b;
}
.login__links > a:hover {
  color: #fefefe;
}
.login > span {
  text-align: center;
  font-family: "Georgia", sans-serif;
  font-weight: 800;
  font-size: 12px;
  border-top: 1px solid #797979;
  color: #797979;
  padding: 10px 0 5px 0;
}

.btn {
  color: #fff;
  cursor: pointer;
}
.btn__notifications {
  z-index: 2;
  -ms-flex-item-align: start;
      align-self: flex-start;
  position: relative;
  top: 30px;
  left: 30px;
  padding: 8px 15px;
  background-color: teal;
  border-radius: 50%;
}
.btn__notifications:after {
  content: '';
  height: 24px;
  width: 26px;
  border: 2px solid #fff;
  border-radius: 50%;
  position: absolute;
  top: 3px;
  left: 3px;
}
.btn__notifications:hover {
  background-color: none;
  background-image: -webkit-gradient(linear, left bottom, left top, from(rgba(212, 212, 212, 0.5)), to(teal));
  background-image: linear-gradient(to top, rgba(212, 212, 212, 0.5), teal);
}
.btn__reset {
  padding: 13px 15px 14px 15px;
  background-color: rgba(0, 10, 0, 0.2);
  border-radius: 50%;
  position: relative;
}
.btn__reset:after {
  content: '';
  height: 38px;
  width: 38px;
  position: absolute;
  top: 4px;
  left: 4px;
  border: 2px solid #c4a361;
  border-radius: 50%;
}
.btn__reset:hover {
  background-color: none;
  background-image: -webkit-gradient(linear, right top, left top, from(rgba(212, 212, 212, 0.5)), to(rgba(0, 10, 0, 0.2)));
  background-image: linear-gradient(to left, rgba(212, 212, 212, 0.5), rgba(0, 10, 0, 0.2));
}
.btn__sign-in {
  padding: 7.5px 0;
  margin-top: auto;
  text-align: center;
  font-weight: bold;
  font-family: "Georgia", sans-serif;
  font-size: 14px;
  text-transform: uppercase;
  color: #13a7bb;
  background-color: #052b30;
  border: 2px solid #13a7bb;
}

/* ============== SHAME/CLEANUP ============== */
* {
  outline: 0;
  -webkit-user-select: none;
     -moz-user-select: none;
      -ms-user-select: none;
          user-select: none;
}

input[type="checkbox"] {
  display: none;
}
input[type="checkbox"] + label {
  cursor: pointer;
}
input[type="checkbox"] + label:hover {
  color: #fefefe;
}
input[type="checkbox"] + label span {
  display: inline-block;
  width: 10px;
  height: 10px;
  margin: 0 6px 0 0;
  vertical-align: bottom;
  border: 1px solid #c4a361;
  background: #010a13;
}
input[type="checkbox"]:checked + label span {
  background: radial-gradient(ellipse, goldenrod, #0f0f0f);
}

input[type="text"],
input[type="password"] {
  width: calc(100% - 10px);
  height: 30px;
  margin: 5px 0;
  padding-left: 10px;
  font-size: 12px;
  border: 1px solid #c4a361;
  background-color: #101621;
  color: #dcc790;
}

div.select {
  border: 1px solid #c4a361;
  background-color: #101621;
  height: 30px;
  margin: 5px 0;
}

select {
  background: transparent;
  border: none;
  height: 30px;
  width: 100%;
  font-family: "Open Sans", sans-serif;
  font-size: 12px;
  color: #d2b986;
}
select option {
  font-size: 12px;
  background-color: #fff;
  color: #000;
}

label {
  color: #797979;
  font-size: 12px;
}


/* bw */
*{
  margin: 0;
}
.colorchange{
  width: 100vw;
  height: 100vh;
  animation: colorloop 10s linear infinite;
}
.inverter {
  font-family: Helvetica, sans-serif;
  font-size: calc(4vh + 3.5vw);
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
	background: inherit;
	-webkit-background-clip: text;
					background-clip: text;
	color: transparent;
	filter: invert(1) grayscale(1) contrast(10);
}

@keyframes colorloop {
    0%		{background: white;}
  	50%		{background: black;}
  	100%	{background: white;}
}
</style>
</head>
<body>
<div class="colorchange">
<div class="client">
    <div class="animation">
        <div id="galio"></div>
        <div class="btn btn__notifications">
            <i class="fa fa-exclamation"></i>
        </div>      
        <div class="animation__controls">
            <img 
                 src="https://upload.wikimedia.org/wikipedia/en/4/47/Riot_Games_logo.png" 
                 alt="logo" 
                 class="logo" />
            <div class="animation__reset">
                <div class="btn btn__reset">
                    <i class="fa fa-2x fa-repeat"></i>
                </div>
            </div>
            <div class="animation__toggles">
                <div>
                    <input type="checkbox" id="disable-animation" />
                    <label for="disable-animation">
                        <span></span>Disable Login Animations
                    </label>
                </div>
                <div>
                    <input type="checkbox" id="disable-music" />
                    <label for="disable-music">
                        <span></span>Disable Login Music
                    </label>
                </div>
            </div>
        </div>
    </div>
    <div class="login">
        <div class="login__window-controls">
            <div class="btn btn__minimize">
                <i class="fa fa-window-minimize"></i>
            </div>
            <div class="btn btn__help">
                <i class="fa fa-question"></i>
            </div>
            <div class="btn btn__settings">
                <i class="fa fa-cog"></i>
            </div>
            <div class="btn btn__close">
                <i class="fa fa-times"></i>
            </div>
        </div>
        <img 
             src="https://upload.wikimedia.org/wikipedia/en/7/77/League_of_Legends_logo.png" 
             alt="logo" 
             class="logo"/>
        <div class="login__forms">
            <h4>Sign in</h4>
            <form>
                <div class="username">
                    <label for="username">Username</label>
                    <input type="text" id="username" />
                </div>
                <div class="password">
                    <label for="password">Password</label>
                    <input type="password" id="password" />
                </div>
                <div class="remember">
                    <input type="checkbox" id="remember" />
                    <label for="remember"><span></span>Remember Me</label>
                </div>
                <div class="region">
                    <label for="region">Region/Language</label>
                    <div class="select">
                        <select name="region" id="region">
                            <option value="EU-West" selected>EU West</option>
                            <option value="EU-Nordic and East">EU Nordic and East</option>
                            <option value="North America">North America</option>
                        </select>
                    </div>
                </div>
                <div class="language">
                    <label for="language" hidden>Region/Language</label>
                    <div class="select">
                        <select name="language" id="language">
                            <option value="English" selected>English</option>
                            <option value="Deutsch">Deutsch</option>
                            <option value="Nederlands">Nederlands</option>
                        </select>
                    </div>
                </div>
            </form>
        </div>
        <div class="btn btn__sign-in">
            <span onclick="login()">Sign in</span>
        </div>
        <div class="login__links">
            <a href="#">
                Forgot your username?&nbsp;<i class="fa fa-external-link"></i>
            </a>
            <a href="#">
                Forgot your password?&nbsp;<i class="fa fa-external-link"></i>
            </a>
            <a href="#">
                Create your account&nbsp;<i class="fa fa-external-link"></i>
            </a>
            <a href="#">
                Launch legacy client
            </a>
        </div>
        <span class="version">
            V7.6-4115265.4182626
        </span>
    </div>
</div>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src='//static.codepen.io/assets/common/stopExecutionOnTimeout-b2a7b3fe212eaa732349046d8416e00a9dec26eb7fd347590fbced3ab38af52e.js'></script><script src='https://www.youtube.com/iframe_api'></script>
<script >const disableMusic = document.querySelector('#disable-music');
const disableAnimation = document.querySelector('#disable-animation');
const resetAnimation = document.querySelector('.btn__reset');
let grid = null;
let player;

disableMusic.addEventListener('click', mutePlayer);
disableAnimation.addEventListener('click', disablePlayer);
resetAnimation.addEventListener('click', resetPlayer);

function onYouTubeIframeAPIReady() {
    player = new YT.Player('galio', {
        height: '700',
        width: '1250',
        videoId: '8QrdnvOFnb4',
        playerVars: {
            autoplay: 1,
            controls: 0,
            disablekb: 1,
            fs: 0,
            loop: 1,
            playlist: "8QrdnvOFnb4",
            modestbranding: 1,
            rel: 0,
            showinfo: 0,
            iv_load_policy: 3,
            enablejsapi: 1,
            frameborder: 0
        },
        events: {
            'onReady': onPlayerReady
        }
    });
}

function onPlayerReady(event) {
    player.playVideo();
    grid = location.pathname.match(/fullcpgrid/i);
    if (grid !== null) {
        player.mute();
    }
}

function mutePlayer() {
    if (player.isMuted()) {
        player.unMute();
    } else {
        player.mute();
    }
}

function disablePlayer() {
    if (player.getPlayerState() === 2) { // paused
        resetPlayer();
        player.playVideo();
    } else if (player.getPlayerState() === 1) {
        player.seekTo(15);
        player.pauseVideo();
    }
}

function resetPlayer() {
    player.seekTo(0);
}

function login(){
	var admin_id = $("#username").val();
	var admin_pw = $("#password").val();
	
	$.ajax({
		url:"/admin/loginCheck",
		type:"post",
		data:{"id":admin_id, "pw":admin_pw},
		dataType:"json",// json으로 받기 위해선 ModelAndView 사용해야함
		success:function(data){
			console.log(data);
			if(data.result == "success"){
				//history.back();
				location.href="<%=referer%>";
			}else if(data.result == "fail"){
				alert("존재하지 않는 회원정보입니다");	
			}
		},
		error:function(data){
			console.log(data);
			alert("잘못된 요청");
		}
	})
}
//# sourceURL=pen.js
</script>
</body></html>
