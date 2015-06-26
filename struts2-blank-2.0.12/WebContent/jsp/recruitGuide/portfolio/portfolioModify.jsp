<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>	

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<title>IT취뽀 - IT 취업정보 사이트</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta name="description" content="" />
<meta name="author" content="http://bootstraptaste.com" />
<!-- css -->
<link href="/css/bootstrap.min.css" rel="stylesheet" />
<link href="/css/reset.css" rel="stylesheet" />
<link href="/css/fancybox/jquery.fancybox.css" rel="stylesheet">
<link href="/css/jcarousel.css" rel="stylesheet" />
<link href="/css/flexslider.css" rel="stylesheet" />
<link href="/css/style.css" rel="stylesheet" />

<link href="/css/portfolioInfo.css" rel="stylesheet" />
<link href="/css/portfolioEdit.css" rel="stylesheet" />

<!-- BootStrap -->
<!-- Latest compiled and minified CSS -->


<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap-theme.min.css">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
<!-- Theme skin -->
<link href="/skins/default.css" rel="stylesheet" />

<!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
<script type="text/javascript" src="/js/jquery-2.0.0.js"></script>
<script type="text/javascript">

	
	/* $(document).ready(function() {
		$("#tx").focus(function() {
			$(this).text('');
		});
		
		$("#tx").keyup(function() {
			$("#read").html(($(this).val().length));
			if ($(this).val().length > 30) {
				alert('30글자 초과');
				$("#tx").val(($("#tx").val().substr(0, 30)));
			}
		});
		
		$("button#save").click(function() {
			if ($("#tx").val().length == 0
					|| $("#tx").val() == "한줄 토크를 달아주세요! (30자)") {
				alert('DataCheck!');
			} else {
				$("form#replyForm").submit();
			}
		});

	}); */
	
	$(document).ready(function() {
		$("a#modify").click(function() {
			$("form#mfrm").submit();
		});	
	});
	
	function readURL(input) {
	    if (input.files && input.files[0]) {
	        var reader = new FileReader();
	        reader.onload = function (e) {
	            $('#blah').attr('src', e.target.result);
	        }
	        reader.readAsDataURL(input.files[0]);
	    }
	}
</script>



</head>
<body>
<div id="wrapper">
	<!-- start header -->
<%@ include file="/jsp/header.jsp" %>
	<!-- end header -->
	<section id="inner-headline">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<ul class="breadcrumb">
					<li><a href="#"><i class="fa fa-home"></i></a><i class="icon-angle-right"></i></li>
					<li class="active">포트폴리오</li>
				</ul>
			</div>
		</div>
	</div>
	</section>
	<section id="content">
	<div class="container">
		<div class="row">
			
			
			<!-- 포트폴리오 info 테이블 -->
			
			<div class="col-lg-8">
			
			<fieldset>
			<legend>PORTFOLIO</legend>
			<form action="/portfolio/portfolioModify.action" method="post" name = "mfrm" id = "mfrm" enctype = "multipart/form-data">
					<input type = "hidden" name = "por_no" value = "${bean.por_no}">
					<input type = "hidden" name = "job" value = "info">
				<table width="" height="" class="tbl_type" cellspacing = "0">
				
					<tbody>
						<tr>
							
							<td rowspan = "10" width = "620"><img src = "/img/portfolioUp/${bean.imgFileName}" width = "600"/></td>
							<td height = "15"> 
								<input type = "text" name = "mem_id" value = "${bean.mem_id}">
							</td> 
							
							
							
						</tr>
						<tr>
							<td class = "td_title" height = "30"> 
								<input type = "text" name = "por_title" value = "${bean.por_title}">
								
							</td>
						</tr>
						<tr>
							<td height = "15px"> 
								<select name = "por_job">
									<option>Select Choice</option>
									<option>웹 프로그래머</option>
									<option>시스템 소프트웨어 엔지니어</option>
									<option>컴퓨터 프로그래머</option>
									<option>스마트폰 앱 개발자</option>
									<option>데이터베이스 개발자  </option>
									<option>게임 프로그래머 </option>
									<option>컴퓨터 하드웨어 관리자 </option>
									<option>컴퓨터 보안 정보 시스템 관리자 </option>
									<option>네트워크 엔지니어 </option>
									<option>네트워크 프로그래머 </option>
									<option>네트워크 매니저</option>
									
								</select>
							</td>
						</tr>
						<tr>
							<td height = "30"> 
							
  							<img alt="" src="/img/button/eye.jpg" width="15">
							&nbsp;&nbsp;${bean.por_hit }&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							 
						
  							<button id="like" value="${bean.por_no}"><img alt="" src="/img/button/like.jpg" width="15"></button>
							&nbsp;&nbsp;<span id="tt">${bean.por_like }</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${bean.por_regDate}
							</td>
						</tr>
						<tr>
							<td> 
								<textarea title="레이블 텍스트" class="i_text" rows="15" cols = "30" name = "por_content" id = "por_content">${bean.por_content}</textarea>
								
							</td>
						</tr>
						
						<tr>
							<td>
								<img src = "/img/ad.jpg" width = "200"/><br>
							</td>
						</tr>
						
						<tr>
						<th scope="row" height = "15">PDF 파일</th>
						</tr>
						<tr>
						<td>
							<div class="item">
								<input title="레이블 텍스트" type="file" name = "pdf" id = "pdf">
							</div>
						</td>
						</tr>
						<tr>
						<th scope="row" height = "15">IMG 파일</th>
						<tr>
						<td>
							<div class="item">
								<input title="레이블 텍스트" type="file" name = "img" id = "img" onchange="readURL(this)">
							</div>
						</td>
						</tr>
					</tbody>
				</table>
				</form>
					<div align="center">
						<br><br>
							<a class="btn_big" href="#" name = "modify" id = "modify"><strong>수정</strong></a>
							<a class="btn_big" href="/portfolio/portfolioDelete.action?por_no=${bean.por_no}"><strong>삭제</strong></a>
							<a class="btn_big" href="/portfolio/portfolioList.action"><span>목록</span></a> 
					</div>
				</fieldset>
				
				
				
			</div>
			<div class="col-lg-4">

				<!-- 오른쪽 메뉴 넣는 부분  -->

				<aside class="right-sidebar">
				<div class="widget">
					<form class="form-search">
						<input class="form-control" type="text" placeholder="Search..">
					</form>
				</div>
				<div class="widget">
					<h4 class="widgetheading">취업정보</h4>
					<ul class="cat">
						<li><i class="icon-angle-right"></i><a href="/review/reviewList.action">취업후기</a><span id="j1"></span></li>
						<li><i class="icon-angle-right"></i><a href="/cov/covList.action">합격자소서</a><span id="j1"></span></li>
						<li><i class="icon-angle-right"></i><a href="/portfolio/portfolioList.action">포트폴리오</a><span id="j1"></span></li>
						<li><i class="icon-angle-right"></i><a href="/jsp/recruitGuide/jobAnalysys.jsp">직무분석</a><span id="j1"></span></li>

					</ul>
				</div>
				<div class="widget">
					<h5 class="widgetheading">Popular tags</h5>
					<ul class="tags">
						<li><a href="#">Web design</a></li>
						<li><a href="#">Trends</a></li>
						<li><a href="#">Technology</a></li>
						<li><a href="#">Internet</a></li>
						<li><a href="#">Tutorial</a></li>
						<li><a href="#">Development</a></li>
					</ul>
				</div>
				</aside>
			</div>
		</div>
	</div>
	
	
	</section>
	<footer>
<%@ include file="/jsp/bottominfo.jsp" %>
	</footer>
</div>
<a href="#" class="scrollup"><i class="fa fa-angle-up active"></i></a>
<!-- javascript
    ================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="js/jquery.js"></script>
<script src="js/jquery.easing.1.3.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.fancybox.pack.js"></script>
<script src="js/jquery.fancybox-media.js"></script>
<script src="js/google-code-prettify/prettify.js"></script>
<script src="js/portfolio/jquery.quicksand.js"></script>
<script src="js/portfolio/setting.js"></script>
<script src="js/jquery.flexslider.js"></script>
<script src="js/animate.js"></script>
<script src="js/custom.js"></script>
</body>
</html>