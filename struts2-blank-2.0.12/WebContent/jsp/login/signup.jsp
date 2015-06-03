<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link href="/css/loginForm.css" rel="stylesheet" />
<script type="text/javascript" src="/script/jquery-2.0.0.js"></script>
<script type="text/javascript" src="/js/loginForm.js"></script>
<script type="text/javascript">
function JoinClose(){
	//window.close();
	document.inFrm.submit();
}
</script>
</head>
<body>
<div class="container">
    	<div class="row">
			<div class="col-md-6 col-md-offset-3">
				<div class="panel panel-login">
					<div class="panel-heading">
						<div class="row">
								<a href="#" class="active" >회원가입</a>
						</div>
						<hr>
					</div>
					<div class="panel-body">
						<div class="row">
							<div class="col-lg-12">
								<form id="register-form" action="/app/signup.action" method="post" role="form" style="display: block;">
									<div class="form-group">
										<input type="text" name="mem_id" id="mem_id" tabindex="1" class="form-control" placeholder="아이디" value="">
									</div>
									<div class="form-group">
										<input type="password" name="mem_pw" id="mem_pw" tabindex="1" class="form-control" placeholder="비밀번호">
									</div>
									<div class="form-group">
										<input type="password" name="mem_pw_re" id="mem_pw_re" tabindex="1" class="form-control" placeholder="비밀번호 확인">
									</div>
									<div class="form-group">
										<input type="text" name="mem_name" id="mem_name" tabindex="1" class="form-control" placeholder="이름" value="">
									</div>
									<div class="form-group">
										<input type="email" name="mem_email" id="mem_email" tabindex="1" class="form-control" placeholder="이메일" value="">
									</div>
									<div class="form-group">
										<input type="text" name="mem_phone" id="mem_phone" tabindex="1" class="form-control" placeholder="전화번호" value="">
									</div>
									<div class="form-group">
										<div class="row">
											<div class="col-sm-6 col-sm-offset-3">
												<input type="submit" name="register-submit" id="register-submit" tabindex="4" class="form-control btn btn-register" value="가입">
											</div>
										</div>
									</div>
								</form>
								
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>
