<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Moderna - Bootstrap 3 flat corporate template</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta name="description" content="" />
<meta name="author" content="http://bootstraptaste.com" />
<!-- css -->
<link href="/css/bootstrap.min.css" rel="stylesheet" />
<link href="/css/fancybox/jquery.fancybox.css" rel="stylesheet">
<link href="/css/jcarousel.css" rel="stylesheet" />
<link href="/css/flexslider.css" rel="stylesheet" />
<link href="/css/style.css" rel="stylesheet" />


<!-- Theme skin -->
<link href="/skins/default.css" rel="stylesheet" />

<!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
    
<link href="/css/portfolioEdit.css" rel="stylesheet" />
<script type="text/javascript" src="/js/jquery-2.0.0.js" charset = "EUC-KR"></script>
<script type="text/javascript" charset = "EUC-KR">
	$(document).ready(function() {
		$("a#save").click(function() {
			$("form#frm").submit();
		});	
		
	});
	
	
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
					<li><a href="#">포트폴리오</a><i class="icon-angle-right"></i></li>
					
				</ul>
			</div>
		</div>
	</div>
	</section>
	<section id="content">
	<div class="container">
		<div class="row">
			
			<div class="col-lg-8">
				<!-- UI Object -->
				<form action="/portfolio/portfolioInsert.action" method="post" name = "frm" id = "frm" enctype = "multipart/form-data">
					<fieldset>
						<legend>PORTFOLIO</legend>
						<div class="form_table">
						<table border="0" cellspacing="0" summary="표의 요약을 반드시 넣어 주세요">
						<tbody>
						<tr>
						<th scope="row">아이디</th>
						<td>
							
								admin
							
						</td>
						</tr>
						<tr>
						<th scope="row">제목</th>
						<td>
							<div class="item">
								<input title="레이블 텍스트" class="i_text" type="text" name = "por_title" id = "por_title">
							</div>
						</td>
						</tr>
						<tr>
						<th scope="row">직무</th>
						<td>
							<div class="item">
								<!-- <input title="레이블 텍스트" class="i_text" type="text" name = "por_job" id = "por_job"> -->
								<select name = "por_job">
									<option>Select Choice</option>
									<option>developer</option>
									<option>Hacker</option>
									<option>Engineer</option>
									<option>Planner</option>
									<option>Designer</option>
								</select>
							</div>
						</td>
						</tr>
						
						
						<tr>
						<th scope="row">내용</th>
						<td>
							<div class="item">
								<textarea title="레이블 텍스트" class="i_text" rows="20"  name = "por_content" id = "por_content"></textarea>
							</div>
						</td>
						</tr>
						
						<tr>
						<th scope="row">PDF 파일</th>
						<td>
							<div class="item">
								<input title="레이블 텍스트" type="file" name = "pdf" id = "pdf">
							</div>
						</td>
						</tr>
						<tr>
						<th scope="row">IMG 파일</th>
						<td>
							<div class="item">
								<input title="레이블 텍스트" type="file" name = "img" id = "img">
							</div>
						</td>
						</tr>
						</tbody>
						</table>
					</div>
					</fieldset>
					
					<div align="right">
						<a class="btn_big" href="#" id="save"><strong>저장</strong></a>
						<a class="btn_big" href="/portfolio/portfolioList.action" id="cancel"><strong>취소</strong></a>
					</div>
				</form>
					
			</div>
			<!-- 오른쪽 메뉴 넣는 부분  -->
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
</body>
</html>