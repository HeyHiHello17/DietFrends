<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Main 화면</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="resources/main/images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/main/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/main/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/main/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic&display=swap" rel="stylesheet">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="resources/main/vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="resources/main/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/main/vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/main/css/util.css">
	<link rel="stylesheet" type="text/css" href="resources/main/css/main.css">
<!--===============================================================================================-->

<!--===============================================================================================-->	
	<script src="resources/main/vendor/jquery/jquery-3.4.1.min.js"></script>
<!--===============================================================================================-->
	<script src="resources/main/vendor/bootstrap/js/popper.js"></script>
	<script src="resources/main/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="resources/main/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="resources/main/js/main.js"></script>
	

    
</head>
    
<body>
	
	<div class="limiter">
		<div class="container-login100" style="background-image: url('resources/main/images/img-01.jpg');">
            
            <!--로그인 DIV-->
			<div class="wrap-login100 p-t-210 p-b-30">
                
				<form class="login100-form validate-form" id="loginForm">
                    
                    <!--타이틀-->
					<div class="login100-form-title p-t-20 p-b-20">WELCOME DIETFRENDS</div>
                    <div class="login100-form-title2 p-b-40 ">Share your diet with your friends</div>
                    
                    <!--아이디-->
					<div class="wrap-input100 validate-input m-b-10" data-validate = "Username is required">
						<input class="input100" type="text" id="id" name="id" placeholder="Username">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-user"></i>
						</span>
					</div>
                    
                    <!--비밀번호-->
					<div class="wrap-input100 validate-input m-b-10" data-validate = "Password is required">
						<input class="input100" type="password" id="pwd" name="pwd" placeholder="Password">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-lock"></i>
						</span>
					</div>
					
					<!-- 체크 문구 div -->
					<div id="checkTitle" class="checkTitle">
					</div>

                    <!--로그인 버튼-->
					<div class="container-login100-form-btn p-t-10">
						<button class="login100-form-btn" id="loginButton" type="button" disabled="true">
							Login
						</button>
					</div>
                    
                    <!--찾기-->
					<div class="text-center w-full p-t-25 p-b-230">
						<a href="#" class="txt1">
							Forgot Username / Password?
						</a>
					</div>
                    
                    <!--회원가입-->
					<div class="text-center w-full">
						<a class="txt1" href="#">
							Create new account
							<i class="fa fa-long-arrow-right"></i>						
						</a>
					</div>
                    
				</form>
			</div>
            <!--로그인 DIV 끝-->
            
		</div>
	</div>
    
</body>
</html>