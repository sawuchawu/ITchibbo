<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<meta charset="UTF-8" />
<!-- <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">  -->
<title>Login and Registration Form with HTML5 and CSS3</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description"
	content="Login and Registration Form with HTML5 and CSS3" />
<meta name="keywords"
	content="html5, css3, form, switch, animation, :target, pseudo-class" />
<meta name="author" content="Codrops" />
<link rel="shortcut icon" href="../favicon.ico">
<link rel="stylesheet" type="text/css" href="/css/ldemo.css" />
<link rel="stylesheet" type="text/css" href="/css/lstyle.css" />
<link rel="stylesheet" type="text/css" href="/css/animate-custom.css" />
<script type="text/javascript" src="/script/jquery-2.0.0.js"></script>
<script type="text/javascript">
function loginClose(){
	window.close();
	document.loFrm.submit();
}
function joinClose(){
	window.close();
	document.inFrm.submit();
}
</script>
</head>
<body>
	<div class="container">
		
		<section>
		<div id="container_demo">
			<!-- hidden anchor to stop jump http://www.css3create.com/Astuce-Empecher-le-scroll-avec-l-utilisation-de-target#wrap4  -->
			<a class="hiddenanchor" id="toregister"></a> <a class="hiddenanchor"
				id="tologin"></a>
			<div id="wrapper">
				<div id="login" class="animate form">
					<form action="/app/login.action" method="post" id="loFrm" name="loFrm">
						<h1>Log in</h1>
						<p>
							<label for="username" class="uname" data-icon="u"> ID </label> 
							<input id="id" name="id"
								required="required" type="text"	 />
						</p>
						<p>
							<label for="password" class="youpasswd" data-icon="p">
								Your password </label> <input id="pw" name="pw"
								required="required" type="password" placeholder="eg. X8df!90EO" />
						</p>
						<p class="keeplogin">
							<input type="checkbox" name="loginkeeping" id="loginkeeping"
								value="loginkeeping" /> <label for="loginkeeping">Keep
								me logged in</label>
						</p>
						<p class="login button">
							<input type="button" value="Login" onclick="loginClose()"/>
						</p>
						<p class="change_link">
							아직 회원이 아니세요? <a href="#toregister" class="to_register">JOIN</a>
						</p>
					</form>
				</div>

				<div id="register" class="animate form">
				
				
					<form id="inFrm" name="inFrm" method="post" action="/app/signup.action" enctype="multipart/form-data" autocomplete="off">
						<h1>Sign up</h1>
						
						<p><label for="uid" class="uid"
								data-icon="u">Your userId </label> <input
								id="mem_id" name="mem_id"
								required="required" type="text" placeholder="아이디 입력" />
						</p>
						
						
						<p>
							<label for="upw" class="upw" data-icon="p">Your
								password </label> <input id="mem_pw" name="mem_pw"
								required="required" type="password" placeholder="비밀번호 입력" />
						</p>
						
						
						<p>
							<label for="upw2" class="upw2"
								data-icon="p">Please confirm your password </label> <input
								id="mem_pw_re" name="mem_pw_re"
								required="required" type="password" placeholder="비밀번호 확인" />
						</p>


						<p>
							<label for="uname" class="uname" data-icon="u">Your
								username</label> <input id="mem_name" name="mem_name"
								required="required" type="text" placeholder="이름 입력" />
						</p>
						
						
						<p>
							<label for="uemail" class="uemail" data-icon="e">
								Your email</label> <input id="mem_email" name="mem_email"
								required="required" type="email"
								placeholder="이메일 입력" />
						</p>
						
						
						<p>
							<label for="uphone" class="uphone"
								data-icon="u">Your PhoneNumber</label> <input
								id="mem_phone" name="mem_phone"
								required="required" type="text" placeholder="핸드폰 번호 입력" />
						</p>
	
						
						<p class="signin button">
							<input type="button" value="Sign up" onclick="joinClose()"/>
						</p>
						<p class="change_link">
							이미 회원이세요 ? <a href="#tologin" class="to_register">LOG IN</a>
						</p>
					</form>
					
				</div>

			</div>
		</div>
		</section>
	</div>
</body>
</html>