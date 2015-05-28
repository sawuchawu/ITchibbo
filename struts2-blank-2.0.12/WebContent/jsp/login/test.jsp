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
					<form action="mysuperscript.php" autocomplete="on">
						<h1>Log in</h1>
						<p>
							<label for="username" class="uname" data-icon="u"> ID </label> 
							<input id="username" name="username"
								required="required" type="text"	 />
						</p>
						<p>
							<label for="password" class="youpasswd" data-icon="p">
								Your password </label> <input id="password" name="password"
								required="required" type="password" placeholder="eg. X8df!90EO" />
						</p>
						<p class="keeplogin">
							<input type="checkbox" name="loginkeeping" id="loginkeeping"
								value="loginkeeping" /> <label for="loginkeeping">Keep
								me logged in</label>
						</p>
						<p class="login button">
							<input type="submit" value="Login" />
						</p>
						<p class="change_link">
							아직 회원이 아니세요? <a href="#toregister" class="to_register">JOIN</a>
						</p>
					</form>
				</div>

				<div id="register" class="animate form">
					<form action="mysuperscript.php" autocomplete="on">
						<h1>Sign up</h1>
						<p>
							<label for="usernamesignup" class="uname" data-icon="u">ID</label> 
							<input id="usernamesignup" name="usernamesignup" required="required" type="text" />
						</p>
						<p>
							<label for="emailsignup" class="youmail" data-icon="e">E-MAIL</label> 
							<input id="emailsignup" name="emailsignup" required="required" type="email" />
						</p>
						<p>
							<label for="passwordsignup" class="youpasswd" data-icon="p">PW</label> 
							<input id="passwordsignup" name="passwordsignup" required="required" type="password"/>
						</p>
						<p>
							<label for="passwordsignup_confirm" class="youpasswd" data-icon="p">PW CHECK</label> 
							<input id="passwordsignup_confirm" name="passwordsignup_confirm" required="required" type="password" />
						</p>
						<p class="signin button">
							<input type="submit" value="Sign up" />
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