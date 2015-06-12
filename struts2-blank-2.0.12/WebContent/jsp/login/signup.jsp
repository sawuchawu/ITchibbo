<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
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

function checkPw() {
	var f1 = document.forms[0];
	var pw1 = f1.mem_pw.value;
	var pw2 = f1.mem_pw_re.value;
 	  if(pw1!=pw2){
 		  alert('동일한 암호를 입력하세요.');
 		  $("#mem_id").attr("readonly","readonly");
 		  $("#mem_name").attr("readonly","readonly");
 		  $("#mem_email").attr("readonly","readonly");
 		  $("#mem_phone").attr("readonly","readonly");
 		  if($("#mem_name").val()||$("#mem_email")||$("#mem_phone")){
 			  $("#register-submit").attr("type","button");
 		  }
 	  }else{
 		  $("#mem_id").removeAttr("readonly");
 		  $("#mem_name").removeAttr("readonly");
 		  $("#mem_email").removeAttr("readonly");
 		  $("#mem_phone").removeAttr("readonly");
 		 $("#register-submit").attr("type","submit");
 	  }
	  }
	  
function checkId() {
	$.ajax(
			{
				url:"/app/memberList.action",
				type:"get",
				dataType:"json",
				success:function(data){
					$.each(data,function(i,dom){
					//alert(dom.mem_id);
					//alert($("#mem_id").val());
					if(dom.mem_id==$("#mem_id").val()){
						alert("중복된 아이디 입니다.");
				 		  $("#mem_pw").attr("readonly","readonly");
				 		  $("#mem_pw_re").attr("readonly","readonly");
				 		  $("#mem_name").attr("readonly","readonly");
				 		  $("#mem_email").attr("readonly","readonly");
				 		  $("#mem_phone").attr("readonly","readonly");
				 		  if($("#mem_name").val()||$("#mem_email")||$("#mem_phone")){
				 			$("#register-submit").attr("type","button");
						}
					}else{
				 		  $("#mem_pw").removeAttr("readonly");
				 		  $("#mem_pw_re").removeAttr("readonly");
				 		  $("#mem_name").removeAttr("readonly");
				 		  $("#mem_email").removeAttr("readonly");
				 		  $("#mem_phone").removeAttr("readonly");
				  		 $("#register-submit").attr("type","submit");
					}
					});
				}
	});
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
										<input type="text" name="mem_id" id="mem_id" tabindex="1" class="form-control" required="required" onblur="checkId()" placeholder="아이디" value="">
									</div>
									<div class="form-group">
										<input type="password" name="mem_pw" id="mem_pw" tabindex="1" class="form-control" required="required" placeholder="비밀번호">
									</div>
									<div class="form-group">
										<input type="password" name="mem_pw_re" id="mem_pw_re" tabindex="1" class="form-control" onblur="checkPw()" required="required" placeholder="비밀번호 확인">
									</div>
									<div class="form-group">
										<input type="text" name="mem_name" id="mem_name" tabindex="1" class="form-control" required="required" placeholder="이름" value="">
									</div>
									<div class="form-group">
										<input type="email" name="mem_email" id="mem_email" tabindex="1" class="form-control" required="required"  placeholder="이메일" value="">
									</div>
									<div class="form-group">
										<input type="text" name="mem_phone" id="mem_phone" tabindex="1" class="form-control" required="required" placeholder="전화번호" value="">
									</div>
									<div class="form-group">
										<div class="row">
											<div class="col-sm-6 col-sm-offset-3">
												<input type="button" name="register-submit" id="register-submit" tabindex="4" class="form-control btn btn-register" value="가입">
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
