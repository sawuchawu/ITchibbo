<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
     <%@ taglib prefix="s" uri="/struts-tags" %>
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
<script type="text/javascript">
/* 이미지 미리보기 */
        function readURL(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();
                reader.onload = function (e) {
                    $('#blah').attr('src', e.target.result);
                }
                reader.readAsDataURL(input.files[0]);
            }
        }
        /* 기간 */
        function si_ok(){
	a=document.getElementById("a").value;
	b=document.getElementById("b").value;
	c=document.getElementById("c").value;
	d=document.getElementById("d").value;
	e=document.getElementById("e").value;
	f=document.getElementById("f").value;
	document.frm.exp_date.value=a+"년"+b+"월"+c+"일"+"~"+d+"년"+e+"월"+f+"일";
}
        
</script>
<script type="text/javascript" charset = "EUC-KR">
jQuery(function() {
	// Help Toggle
	$('.item>.i_help').click(function() {
		$(this).parent('.item').find('.i_dsc').toggleClass('hide');
	});
	// Input Clear
	var i_text = $('.item>.i_label').next('.i_text');
	$('.item>.i_label').css('position', 'absolute');
	i_text.focus(function() {
		$(this).prev('.i_label').css('visibility', 'hidden');
	}).blur(function() {
		if ($(this).val() == '') {
			$(this).prev('.i_label').css('visibility', 'visible');
		} else {
			$(this).prev('.i_label').css('visibility', 'hidden');
		}
	}).change(function() {
		if ($(this).val() == '') {
			$(this).prev('.i_label').css('visibility', 'visible');
		} else {
			$(this).prev('.i_label').css('visibility', 'hidden');
		}
	}).blur();
});

	$(document).ready(function() {
		$("a#save").click(function() {
			if($("#file").val()==""||$("#file").val()==null){
				alert("파일을 첨부해주세요");
			}
			else{
			$("form#frm").submit();
			}
		});	
	});
</script>

</head>
<body>
<div id="wrapper">
	<!-- start header -->
	<header>
        <div class="navbar navbar-default navbar-static-top">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="index.html"><span>M</span>oderna</a>
                </div>
                <div class="navbar-collapse collapse ">
                    <ul class="nav navbar-nav">
                        <li><a href="index.html">Home</a></li>
                        <li class="dropdown active">
                            <a href="#" class="dropdown-toggle " data-toggle="dropdown" data-hover="dropdown" data-delay="0" data-close-others="false">Features <b class=" icon-angle-down"></b></a>
                            <ul class="dropdown-menu">
                                <li><a href="typography.html">Typography</a></li>
                                <li><a href="components.html">Components</a></li>
								<li><a href="pricingbox.html">Pricing box</a></li>
                            </ul>
                        </li>
                        <li><a href="portfolio.html">Portfolio</a></li>
                        <li><a href="blog.html">Blog</a></li>
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
					<li><a href="#"><i class="fa fa-home"></i></a><i class="icon-angle-right"></i></li>
					<li><a href="#">Features</a><i class="icon-angle-right"></i></li>
					<li class="active">Typography</li>
				</ul>
			</div>
		</div>
	</div>
	</section>
	<section id="content" >
	<div class="container" >
		<div class="row">
			
				
			
			<div class="col-lg-8">
			
				<!-- UI Object -->
				<form action="/expo/dataInsert.action" method="post" name = "frm" id = "frm" enctype = "multipart/form-data">
					<fieldset>
						<legend>EXPO</legend>
						<div class="form_table">
						<table border="0" cellspacing="0" summary="표의 요약을 반드시 넣어 주세요">
						<tbody>
							<tr>
						<td rowspan="5" width="100" height="150"><img id="blah" width="300" height="400"/></td>
						
						</tr>
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
								<input title="레이블 텍스트" class="i_text" type="text" name = "exp_title" id = "exp_title">
							</div>
						</td>
						</tr>
						<tr>
						<th scope="row">기간</th>
						<td>
							<div class="item">
								<!-- <input title="레이블 텍스트" class="i_text" type="text" name = "por_job" id = "por_job"> -->
							<select style="width: 85px;" name="a" SIZE="1" id="a">
									<c:forEach var="i"  begin="2015" end="2020">
										<option value="${i}">${i}</option>
									</c:forEach>	
									</select>
									<select style="width: 50px;" name="b" SIZE="1" id="b">
									<c:forEach var="i"  begin="1" end="12">
										<option value="${i}">${i}</option>
									</c:forEach>	
									</select>
									<select  style="width: 50px;" name="c" SIZE="1" id="c">
									<c:forEach var="i"  begin="1" end="30">
										<option value="${i}">${i}</option>
									</c:forEach>	
									</select>
									~
									<select style="width: 85px;" name="d" SIZE="1" id="d">
									<c:forEach var="i"  begin="2015" end="2020">
										<option value="${i}">${i}</option>
									</c:forEach>	
									</select>
									<select style="width: 50px;" name="e" SIZE="1" id="e">
									<c:forEach var="i"  begin="1" end="12">
										<option value="${i}">${i}</option>
									</c:forEach>	
									</select>
									<select style="width: 50px;" name="f" SIZE="1" id="f" onblur="si_ok()">
									<c:forEach var="i"  begin="1" end="30">
										<option value="${i}">${i}</option>
									</c:forEach>	
									</select>
									<input type="hidden" value="" name="exp_date" id="exp_date">
								
								
							</div>
						</td>
						</tr>
						
					
						
						
						
						<tr>
						<th scope="row">IMG 파일</th>
						<td>
							<div class="item">
								<input title="레이블 텍스트" type="file"  name="file" id="file" value="d" onchange="readURL(this);" >
							</div>
						</td>
						</tr>
					
						</tbody>
						</table>
					</div>
					</fieldset>
					
					<div align="right">
						<a class="btn_big" href="#" id="save"><strong>저장</strong></a>
						<a class="btn_big" href="/expo/expoList.action" id="cancel"><strong>취소</strong></a>
					</div>
				</form>
				
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
							<li><i class="icon-angle-right"></i><a href="/expo/expoList.action">취업박람회</a><span id="j1"></span></li>
							<li><i class="icon-angle-right"></i><a href="/tech/techList.action">IT기술동향</a><span id="j2"></span></li>
							<li><i class="icon-angle-right"></i><a href="#">취업뉴스</a><span id="j3"></span></li>
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
</body>
</html>