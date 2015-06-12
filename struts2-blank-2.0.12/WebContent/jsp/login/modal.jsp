<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script type="text/javascript" src="/js/jquery-2.0.0.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap-theme.min.css">
<link href="/css/loginForm.css" rel="stylesheet" />
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
<script type="text/javascript" src="/js/loginForm.js"></script>
</head>
<body>
<!-- Button trigger modal -->
<a href="#" data-toggle="modal" data-target="#myModal"> 로그인 </a>

<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog">
    	<div class="modal-content">
    		<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
			</div>
			<div class="panel panel-login">
				<div class="panel-heading">
					<div class="row">
						<div class="col-xs-6">
							<a href="#" class="active" id="login-form-link">로그인</a>
						</div>
						<div class="col-xs-6">
							<a href="#" id="register-form-link">회원가입</a>
						</div>
					</div>
					<hr>
				</div>
				<div class="panel-body">
					<div class="row">
						<div class="col-lg-12">
							<form id="login-form" action="/app/login.action" method="post" role="form" style="display: block;">
								<div class="form-group">
									<input type="text" name="id" id="id" tabindex="1" class="form-control" placeholder="아이디" value="">
								</div>
								<div class="form-group">
									<input type="password" name="pw" id="pw" tabindex="2" class="form-control" placeholder="비밀번호">
								</div>
								<div class="form-group text-center">&nbsp;</div>
								<div class="form-group">
									<div class="row">
										<div class="col-sm-6 col-sm-offset-3">
											<input type="submit" name="login-submit" id="login-submit" tabindex="4" class="form-control btn btn-login" value="로그인">
										</div>
									</div>
								</div>
								<div class="form-group">
									<div class="row">
										<div class="col-lg-12">
										</div>
									</div>
								</div>
							</form>
							<form id="register-form" action="/app/signup.action" method="post" role="form" style="display: none;">
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
	
	<%-- <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="container">
						<div class="row">
							<div class="col-md-6 col-md-offset-3">
								<div class="panel panel-login">
									<div class="panel-heading">
										<div class="row">
											<div class="col-xs-6">
												<a href="#" class="active" id="login-form-link">로그인</a>
											</div>
											<div class="col-xs-6">
												<a href="#" id="register-form-link">회원가입</a>
											</div>
										</div>
										<hr>
									</div>
									<div class="panel-body">
										<div class="row">
											<div class="col-lg-12">
												<form id="login-form" action="/app/login.action"
													method="post" role="form" style="display: block;">
													<div class="form-group">
														<input type="text" name="id" id="id" tabindex="1"
															class="form-control" placeholder="아이디" value="">
													</div>
													<div class="form-group">
														<input type="password" name="pw" id="pw" tabindex="2"
															class="form-control" placeholder="비밀번호">
													</div>
													<div class="form-group text-center">&nbsp;</div>
													<div class="form-group">
														<div class="row">
															<div class="col-sm-6 col-sm-offset-3">
																<input type="submit" name="login-submit"
																	id="login-submit" tabindex="4"
																	class="form-control btn btn-login" value="로그인">
															</div>
														</div>
													</div>
													<div class="form-group">
														<div class="row">
															<div class="col-lg-12"></div>
														</div>
													</div>
												</form>
												<form id="register-form" action="/app/signup.action"
													method="post" role="form" style="display: none;">
													<div class="form-group">
														<input type="text" name="mem_id" id="mem_id" tabindex="1"
															class="form-control" placeholder="아이디" value="">
													</div>
													<div class="form-group">
														<input type="password" name="mem_pw" id="mem_pw"
															tabindex="1" class="form-control" placeholder="비밀번호">
													</div>
													<div class="form-group">
														<input type="password" name="mem_pw_re" id="mem_pw_re"
															tabindex="1" class="form-control" placeholder="비밀번호 확인">
													</div>
													<div class="form-group">
														<input type="text" name="mem_name" id="mem_name"
															tabindex="1" class="form-control" placeholder="이름"
															value="">
													</div>
													<div class="form-group">
														<input type="email" name="mem_email" id="mem_email"
															tabindex="1" class="form-control" placeholder="이메일"
															value="">
													</div>
													<div class="form-group">
														<input type="text" name="mem_phone" id="mem_phone"
															tabindex="1" class="form-control" placeholder="전화번호"
															value="">
													</div>
													<div class="form-group">
														<div class="row">
															<div class="col-sm-6 col-sm-offset-3">
																<input type="submit" name="register-submit"
																	id="register-submit" tabindex="4"
																	class="form-control btn btn-register" value="가입">
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
				</div>
			</div>
		</div>
		<jsp:include page="/jsp/login/login.jsp" flush="false" />
	</div> --%>
</body>
</html>