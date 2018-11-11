<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%
String referer = request.getHeader("referer");
 if(referer==null)referer = "/";
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>관리자 Login</title>
<!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.7 -->
  <link rel="stylesheet" href="/resources/bower_components/bootstrap/dist/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="/resources/bower_components/font-awesome/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="/resources/bower_components/Ionicons/css/ionicons.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="/resources/dist/css/AdminLTE.min.css">
  <!-- iCheck -->
  <link rel="stylesheet" href="/resources/plugins/iCheck/square/blue.css">

  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

  <!-- Google Font -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
</head>
<body class="hold-transition login-page">
	<div class="login-box">
		<div class="login-logo">
			<a href="/admin/index"><b>Admin</b></a><a href="/user/index">Shop</a>
		</div>
		<!-- /.login-logo -->
		<div class="login-box-body">
			<p class="login-box-msg">아이디와 비밀번호를 입력하세요</p>

				<div class="form-group has-feedback">
					<input type="text" class="form-control" id="admin_id" placeholder="아이디">
					<span class="glyphicon glyphicon-envelope form-control-feedback"></span>
				</div>
				<div class="form-group has-feedback">
					<input type="password" class="form-control" id="admin_pw" placeholder="비밀번호">
					<span class="glyphicon glyphicon-lock form-control-feedback"></span>
				</div>
				<div class="row">
					<div class="col-xs-8">
						<div class="checkbox icheck">
							<label> 
							<input type="checkbox"> 아이디 저장
							</label>
						</div>
					</div>
					<!-- /.col -->
					<div class="col-xs-4">
						<button type="button" id="btn_login" class="btn btn-primary btn-block btn-flat">로그인</button>
					</div>
					<!-- /.col -->
				</div>

			<div class="social-auth-links text-center">
				<p>- OR -</p>
				<a href="#" id="login_facebook" class="btn btn-block btn-social btn-facebook btn-flat"><i class="fa fa-facebook"></i>페이스북으로 로그인</a> 
				<a href="#"	id="login_google" class="btn btn-block btn-social btn-google btn-flat"><i	class="fa fa-google-plus"></i>구글로 로그인</a>
			</div>
			<!-- /.social-auth-links -->

			<a href="#">아이디&amp;비밀번호 찾기</a><br> 
			<a href="#"	class="text-center">관리자 등록</a>

		</div>
		<!-- /.login-box-body -->
	</div>
	<!-- /.login-box -->

	<!-- jQuery 3 -->
	<script src="/resources/bower_components/jquery/dist/jquery.min.js"></script>
	<!-- Bootstrap 3.3.7 -->
	<script src="/resources/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
	<!-- iCheck -->
	<script src="/resources/plugins/iCheck/icheck.min.js"></script>
	<script>
		$(function() {
			$('input').iCheck({
				checkboxClass : 'icheckbox_square-blue',
				radioClass : 'iradio_square-blue',
				increaseArea : '20%' /* optional */
			});
			
			$("#login_facebook").click(function(){
				alert("준비 중");
			});
			$("#login_google").click(function(){
				alert("준비 중");
			});
			
			/* 관리자 로그인 시작 */
			$("#btn_login").click(function(){
				var admin_id = $("#admin_id").val();
				var admin_pw = $("#admin_pw").val();
				
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
			});
			/* @@ 관리자 로그인 끝 @@ */ 
			
			
			
		});
	</script>
</body>
</html>
