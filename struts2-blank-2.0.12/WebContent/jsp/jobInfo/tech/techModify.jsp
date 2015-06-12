﻿<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
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
<link href="/css/reset.css" rel="stylesheet" />
<link href="/css/fancybox/jquery.fancybox.css" rel="stylesheet">
<link href="/css/jcarousel.css" rel="stylesheet" />
<link href="/css/flexslider.css" rel="stylesheet" />
<link href="/css/style.css" rel="stylesheet" />
<link href="/css/recruitList.css" rel="stylesheet" />
<link href="/css/button.css" rel="stylesheet" />
<link rel="stylesheet" type="text/css" href="/css/tcal.css" />
<link href="/css/portfolioInfo.css" rel="stylesheet" />
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
<script type="text/javascript" src="/js/jquery-2.0.0.js"></script>
<script type="text/javascript">


	$(document).ready(function() {
		$("a#modify").click(function() {
			$("form#mfrm").submit();
		});	
	});

function sendData(){
	obj = document.frm;
	d=obj.file.value;
	alert(d);
	obj.submit();
}
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
		<header>
		<div class="navbar navbar-default navbar-static-top">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target=".navbar-collapse">
						<span class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="index.html"><span>M</span>oderna</a>
				</div>
				<div class="navbar-collapse collapse ">
					<ul class="nav navbar-nav">
						<li><a href="index.html">Home</a></li>
						<li class="dropdown "><a href="#" class="dropdown-toggle "
							data-toggle="dropdown" data-hover="dropdown" data-delay="0"
							data-close-others="false">Features <b
								class=" icon-angle-down"></b></a>
							<ul class="dropdown-menu">
								<li><a href="typography.html">Typography</a></li>
								<li><a href="components.html">Components</a></li>
								<li><a href="pricingbox.html">Pricing box</a></li>
							</ul></li>
						<li><a href="portfolio.html">Portfolio</a></li>
						<li class="active"><a href="blog.html">Blog</a></li>
						<li><a href="contact.html">Contact</a></li>
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
						<li><a href="#"><i class="fa fa-home"></i></a><i
							class="icon-angle-right"></i></li>
						<li class="active">취업정보</li>
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
							<fieldset>
								<legend>TECH</legend>
								<br>
								<form action="/tech/techModify.action" method="post" name="frm"
									id="frm" enctype="multipart/form-data">
									<input type="hidden" name="tec_no" value="${bean.tec_no}">
									<table class="tbl_type" cellspacing="0">

										<tbody>
											<tr>
												<td rowspan="10" width="620"><img
													src="/img/tech/${bean.fileFileName}" id="blah" width="600" /></td>
												<td height="15"><input type="text" name="mem_id"
													value="${bean.mem_id}" style="width: 250px;"></td>



											</tr>
											<tr>
												<td class="td_title" height="30" width="100"><input type="text"
													name="tec_title" value="${bean.tec_title}"
													style="width: 250px;"></td>
											</tr>
											<tr>
												<td height="30"><img alt="" src="/img/button/eye.jpg" width="15">
							&nbsp;&nbsp;${bean.tec_hit }&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

													&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${bean.tec_date}
												</td>
											</tr>
											<tr>
												<td><textarea title="레이블 텍스트" class="i_text" rows="15"
														cols="65" name="tec_content" id="tec_content" value=""
														style="width: 250px;"></textarea></td>
											</tr>

											<tr>
												<td><img src="/img/ad.jpg" width="200"
													style="width: 250px;"><br></td>
											</tr>

											<tr>
												<th scope="row" height="15">IMG 파일</th>
											<tr>
												<td>
													<div class="item">
														<input title="레이블 텍스트" type="file" name="file" id="file"
															onchange="readURL(this);"> <input value="info"
															id="job" name="job" type="hidden">
													</div>
												</td>
											</tr>
										</tbody>
									</table>
								</form>
								<div align="center">
									<br>
									<br> <a class="btn_big" href="javascript:sendData()"><strong>수정</strong></a>
									<a class="btn_big"
										href="/tech/techDelete.action?tec_no=${bean.tec_no}"><strong>삭제</strong></a>
									<a class="btn_big" href="/tech/techList.action"><span>목록</span></a>
								</div>
							</fieldset>

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
						</div> --> </article>
					<center>
						<div id="page" style="font-size: 16px;"></div>
					</center>
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
						<h4 class="widgetheading">취업정보</h4>
						<ul class="cat">
							<li><i class="icon-angle-right"></i><a
								href="javascript:jobSearch(401);">취업박람회</a><span id="j1"></span></li>
							<li><i class="icon-angle-right"></i><a href="/tech/techList.action">IT기술동향</a><span
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
							<strong>Moderna company Inc</strong><br> Modernbuilding
							suite V124, AB 01<br> Someplace 16425 Earth
						</address>
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
							<li><a href="#">Lorem ipsum dolor sit amet, consectetur
									adipiscing elit.</a></li>
							<li><a href="#">Pellentesque et pulvinar enim. Quisque
									at tempor ligula</a></li>
							<li><a href="#">Natus error sit voluptatem accusantium
									doloremque</a></li>
						</ul>
					</div>
				</div>
				<div class="col-lg-3">
					<div class="widget">
						<h5 class="widgetheading">Flickr photostream</h5>
						<div class="flickr_badge">
							<script type="text/javascript"
								src="http://www.flickr.com/badge_code_v2.gne?count=8&amp;display=random&amp;size=s&amp;layout=x&amp;source=user&amp;user=34178660@N03"></script>
						</div>
						<div class="clear"></div>
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
								<span>&copy; Moderna 2014 All right reserved. By </span><a
									href="http://bootstraptaste.com" target="_blank">Bootstraptaste</a>
							</p>
						</div>
					</div>
					<div class="col-lg-6">
						<ul class="social-network">
							<li><a href="#" data-placement="top" title="Facebook"><i
									class="fa fa-facebook"></i></a></li>
							<li><a href="#" data-placement="top" title="Twitter"><i
									class="fa fa-twitter"></i></a></li>
							<li><a href="#" data-placement="top" title="Linkedin"><i
									class="fa fa-linkedin"></i></a></li>
							<li><a href="#" data-placement="top" title="Pinterest"><i
									class="fa fa-pinterest"></i></a></li>
							<li><a href="#" data-placement="top" title="Google plus"><i
									class="fa fa-google-plus"></i></a></li>
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