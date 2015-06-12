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
	<input type="hidden" value="<%=session.getAttribute("id") %>" id="lid">
	<input type="hidden" value="<%=session.getAttribute("mf") %>" id="lmf">
	<header>
        <div class="navbar navbar-default navbar-static-top">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="/index.jsp"><font size="13"><span>IT</span>취뽀</font></a>
                    <ul class="nav navbar-nav">
                        <li><a href="#" id="log"></a></li> <!-- 로그아웃 바꾸기 -->
                        <li><a href="#" id="log2"></a></li> <!-- 마이페이지 바꾸기 -->
                    </ul>
                </div>
             
                <div class="navbar-collapse collapse ">
                    <ul class="nav navbar-nav">
                        <li class="dropdown">
                            <a href="/jsp/recruitInfo/recruit.jsp" class="dropdown-toggle " >채용공고 <b class=" icon-angle-down"></b></a>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle " data-toggle="dropdown" data-hover="dropdown" data-delay="0" data-close-others="false">취업정보 <b class=" icon-angle-down"></b></a>
                            <ul class="dropdown-menu">
                                <li><a href="/expo/expoList.action">취업 박람회</a></li>
                                <li><a href="/tech/techList.action">IT기술 동향</a></li>
								<li><a href="pricingbox.html">취업 뉴스</a></li>
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle " data-toggle="dropdown" data-hover="dropdown" data-delay="0" data-close-others="false">취업가이드 <b class=" icon-angle-down"></b></a>
                            <ul class="dropdown-menu">
                                <li><a href="/review/reviewList.action">취업 후기</a></li>
                                <li><a href="/cov/covList.action">합격 자소서</a></li>
								<li><a href="/portfolio/portfolioList.action">포트폴리오</a></li>
								<li><a href="/jsp/recruitGuide/jobAnalysys.jsp">직무분석</a></li>
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle " data-toggle="dropdown" data-hover="dropdown" data-delay="0" data-close-others="false">커뮤니티 <b class=" icon-angle-down"></b></a>
                            <ul class="dropdown-menu">
                                <li><a href="/brd/brdList.action">자유게시판</a></li>
                                <li><a href="/qna/qnaList.action">Q&A</a></li>
                            </ul>
                        </li>
                        <li><a href="/contact/contact.html">CONTACT</a></li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle " data-toggle="dropdown" data-hover="dropdown" data-delay="0" data-close-others="false" id="adm"><b class=" icon-angle-down"></b></a>
                            <ul class="dropdown-menu">
                                <li><a href="/api/saramin.jsp">사람인</a></li>
                                <li><a href="/app/adminMemList.action">회원관리</a></li>
                                <li><a href="components.html">메뉴관리</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
	</header>
	<!-- end header -->
	<section id="inner-headline">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<ul class="breadcrumb">
					<li><a href="#"><i class="fa fa-home"></i></a><i class="icon-angle-right"></i></li>
					<li class="active">Portfolio</li>
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
							<li><i class="icon-angle-right"></i><a
								href="javascript:jobSearch(401);">취업박람회</a><span id="j1"></span></li>
							<li><i class="icon-angle-right"></i><a href="/jsp/jobInfo/tech/techList.jsp">IT기술동향</a><span
								id="j2"></span></li>
							<li><i class="icon-angle-right"></i><a
								href="javascript:jobSearch(403);">취업뉴스</a><span id="j3"></span></li>
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
	<div class="container">
		<div class="row">
			<div class="col-lg-3">
				<div class="widget">
					<h5 class="widgetheading">Get in touch with us</h5>
					<address>
					<strong>Moderna company Inc</strong><br>
					 Modernbuilding suite V124, AB 01<br>
					 Someplace 16425 Earth </address>
					<p>
						<i class="icon-phone"></i> (123) 456-7890 - (123) 555-7891 <br>
						<i class="icon-envelope-alt"></i> email@domainname.com
					</p>
				</div>
			</div>
			<div class="col-lg-3">
				<div class="widget">
					<h5 class="widgetheading">Pages</h5>
					<ul class="link-list">
						<li><a href="#">Press release</a></li>
						<li><a href="#">Terms and conditions</a></li>
						<li><a href="#">Privacy policy</a></li>
						<li><a href="#">Career center</a></li>
						<li><a href="#">Contact us</a></li>
					</ul>
				</div>
			</div>
			<div class="col-lg-3">
				<div class="widget">
					<h5 class="widgetheading">Latest posts</h5>
					<ul class="link-list">
						<li><a href="#">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</a></li>
						<li><a href="#">Pellentesque et pulvinar enim. Quisque at tempor ligula</a></li>
						<li><a href="#">Natus error sit voluptatem accusantium doloremque</a></li>
					</ul>
				</div>
			</div>
			<div class="col-lg-3">
				<div class="widget">
					<h5 class="widgetheading">Flickr photostream</h5>
					<div class="flickr_badge">
						<script type="text/javascript" src="http://www.flickr.com/badge_code_v2.gne?count=8&amp;display=random&amp;size=s&amp;layout=x&amp;source=user&amp;user=34178660@N03"></script>
					</div>
					<div class="clear">
					</div>
				</div>
			</div>
		</div>
	</div>
	<div id="sub-footer">
		<div class="container">
			<div class="row">
				<div class="col-lg-6">
					<div class="copyright">
						<p>
							<span>&copy; Moderna 2014 All right reserved. By </span><a href="http://bootstraptaste.com" target="_blank">Bootstraptaste</a>
						</p>
					</div>
				</div>
				<div class="col-lg-6">
					<ul class="social-network">
						<li><a href="#" data-placement="top" title="Facebook"><i class="fa fa-facebook"></i></a></li>
						<li><a href="#" data-placement="top" title="Twitter"><i class="fa fa-twitter"></i></a></li>
						<li><a href="#" data-placement="top" title="Linkedin"><i class="fa fa-linkedin"></i></a></li>
						<li><a href="#" data-placement="top" title="Pinterest"><i class="fa fa-pinterest"></i></a></li>
						<li><a href="#" data-placement="top" title="Google plus"><i class="fa fa-google-plus"></i></a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
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