<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- <html lang="en"> -->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>IT취뽀 - IT 취업정보 사이트</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta name="description" content="" />
<meta name="author" content="http://bootstraptaste.com" />
<!-- css -->
<link href="/css/bootstrap.min.css" rel="stylesheet" />
<link href="/css/fancybox/jquery.fancybox.css" rel="stylesheet">
<link href="/css/jcarousel.css" rel="stylesheet" />
<link href="/css/flexslider.css" rel="stylesheet" />
<link href="/css/style.css" rel="stylesheet" />
<link href="/css/recruitList.css" rel="stylesheet" />
<link href="/css/button.css" rel="stylesheet" />
<link rel="stylesheet" type="text/css" href="/css/tcal.css" />
<link href="/css/portfolioEdit.css" rel="stylesheet" />
<!-- Theme skin -->
<link href="/skins/default.css" rel="stylesheet" />

<script type="text/javascript" src="/js/jquery-2.0.0.js"></script>
<script src="/js/jquery.easing.1.3.js"></script>
<script src="/js/bootstrap.min.js"></script>
<script src="/js/jquery.fancybox.pack.js"></script>
<script src="/js/jquery.fancybox-media.js"></script>
<script src="/js/google-code-prettify/prettify.js"></script>
<script src="/js/portfolio/jquery.quicksand.js"></script>
<script src="/js/portfolio/setting.js"></script>
<script src="/js/jquery.flexslider.js"></script>
<script src="/js/animate.js"></script>
<script src="/js/custom.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$("a#save").click(function() {
			$("form#frm").submit();
		});
	});
</script>
<script type="text/javascript">
	function sendData() {
		obj = document.frm;
		d = obj.file.value;
		alert(d);
		obj.submit();
	}
	$(document).ready(function() {
		$("a#save").click(function() {
			$("form#frm").submit();
		});	
	});
	
	function si_ok(){
		var a=document.getElementById("rdate").value;
		document.frm.qna_date.value=a;
	}
</script>
<!-- Theme skin -->
<link href="/skins/default.css" rel="stylesheet" />

<!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

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
					<li class="active">커뮤니티</li>
				</ul>
			</div>
		</div>
	</div>
	</section>
	<section id="content">
	<div class="container">
		<div class="row">
			<div class="col-lg-8">
				<article>
						<div class="post-image">
							<div class="post-heading">
							
								<!-- 컨텐츠 넣는 부분 -->
								<form action="/qna/qnaInsert.action" method="post" name="frm" id="frm" enctype="multipart/form-data">
					<fieldset>
						<legend>Q&A</legend>
						<div class="form_table">
						<table border="0" cellspacing="0" summary="표의 요약을 반드시 넣어 주세요">
						<tbody>
						<tr>
						<th scope="row">아이디</th>
						<td>
						
							
								admin
						
						</td>
						</tr>
						<!-- <tr>
						<th scope="row">작성일</th>
						<td>
								<div class="item">
									<input title="레이블 텍스트" class="i_text" type="date" size="50" id="rdate" name="rdate" onblur="si_ok()">
									<input type="hidden" value="" id="qna_date" name="qna_date">
									
								</div>
							</td>
						</tr> -->
						
						<tr>
						<th scope="row">제목</th>
						<td>
							<div class="item">
								<input title="레이블 텍스트" class="i_text" type="text" name = "qna_title" id = "qna_title">
							</div>
						</td>
						</tr>
						
						
					
						<tr>
						<th scope="row">내용</th>
						<td>
							<div class="item">
								<textarea title="레이블 텍스트" class="i_text" rows="20"  name = "qna_content" id = "qna_content"></textarea>
							</div>
						</td>
						</tr>
						
						
						</tbody>
						</table>
					</div>
					</fieldset>
					
					<div align="right">
						<a class="btn_big" id="save" href="javascript:sendData()"><strong>저장</strong></a>
						<a class="btn_big" href="/qna/qnaList.action" id="cancel"><strong>취소</strong></a>
					</div>
				</form>
							
							</div>
						</div>
						<!-- <div class="bottom-article">
							<ul class="meta-post">
								<li><i class="icon-calendar"></i><a href="#"> Mar 23, 2013</a></li>
								<li><i class="icon-user"></i><a href="#"> Admin</a></li>
								<li><i class="icon-folder-open"></i><a href="#"> Blog</a></li>
								<li><i class="icon-comments"></i><a href="#">4 Comments</a></li>
							</ul>
							<a href="#" class="pull-right">Continue reading <i class="icon-angle-right"></i></a>
						</div> -->
				</article>
				<center><div id="page" style="font-size: 16px;"></div></center>
				<!-- <div id="pagination">
				현재페이지는 class 속성을 current로 바꾸면 된다?///components페이지에 있는 페이징 소스도 보자.
					<span class="all">Page 1 of 3</span>
					<span class="current">1</span>
					<a href="#" class="inactive">2</a>
					<a href="#" class="inactive">3</a>
				</div> -->
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
						<h4 class="widgetheading">커뮤니티</h4>
						<ul class="cat">
							<li><i class="icon-angle-right"></i><a href="/brd/brdList.action">자유게시판</a><span id="j1"></span></li>
							<li><i class="icon-angle-right"></i><a href="/qna/qnaList.action">Q&A</a><span id="j2"></span></li>
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
		</div><!-- 로우 -->
	</div><!-- 컨테이너 -->
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
</body>
</html>