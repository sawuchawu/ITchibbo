<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<title>Moderna - Bootstrap 3 flat corporate template</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta name="description" content="" />
<meta name="author" content="http://bootstraptaste.com" />
<!-- css -->
<link href="../css/bootstrap.min.css" rel="stylesheet" />
<link href="../css/fancybox/jquery.fancybox.css" rel="stylesheet">
<link href="../css/jcarousel.css" rel="stylesheet" />
<link href="../css/flexslider.css" rel="stylesheet" />
<link href="../css/style.css" rel="stylesheet" />


<!-- Theme skin -->
<link href="../skins/default.css" rel="stylesheet" />

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
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="../index.jsp"><font size="13"><span>IT</span>취뽀</font></a>
                    <ul class="nav navbar-nav">
                        <li><a href="/login/login.jsp">로그인</a></li> <!-- 로그아웃 바꾸기 -->
                        <li><a href="/login/signup.jsp">회원가입</a></li> <!-- 마이페이지 바꾸기 -->
                    </ul>
                </div>
                <div class="navbar-collapse collapse ">
                    <ul class="nav navbar-nav">
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle " data-toggle="dropdown" data-hover="dropdown" data-delay="0" data-close-others="false">채용정보 <b class=" icon-angle-down"></b></a>
                            <ul class="dropdown-menu">
                                <li><a href="typography.html">채용공고</a></li>
                                <li><a href="components.html">직종별 검색</a></li>
								<li><a href="pricingbox.html">채용정보 상세검색</a></li>
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle " data-toggle="dropdown" data-hover="dropdown" data-delay="0" data-close-others="false">취업정보 <b class=" icon-angle-down"></b></a>
                            <ul class="dropdown-menu">
                                <li><a href="typography.html">취업 박람회</a></li>
                                <li><a href="components.html">IT기술 동향</a></li>
								<li><a href="pricingbox.html">취업 뉴스</a></li>
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle " data-toggle="dropdown" data-hover="dropdown" data-delay="0" data-close-others="false">취업가이드 <b class=" icon-angle-down"></b></a>
                            <ul class="dropdown-menu">
                                <li><a href="typography.html">취업 후기</a></li>
                                <li><a href="components.html">합격 자소서</a></li>
								<li><a href="pricingbox.html">포트폴리오</a></li>
								<li><a href="../jsp/jobAnalysys.jsp">직무분석</a></li>
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle " data-toggle="dropdown" data-hover="dropdown" data-delay="0" data-close-others="false">커뮤니티 <b class=" icon-angle-down"></b></a>
                            <ul class="dropdown-menu">
                                <li><a href="typography.html">자유게시판</a></li>
                                <li><a href="components.html">Q&A</a></li>
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle " data-toggle="dropdown" data-hover="dropdown" data-delay="0" data-close-others="false">관리자 <b class=" icon-angle-down"></b></a>
                            <ul class="dropdown-menu">
                                <li><a href="typography.html">회원관리</a></li>
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
					<li class="active">Blog</li>
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
						<div class="post-image" id = "01_webProgrammar">
							<div class="post-heading">
								<h3><a href="#">웹 프로그래머</a></h3>
							</div>
							<img src="../img/jobAnalysys/01_webProgrammar.jpg" alt="" />
						</div>
				</article>
				<article>
						<div class="post-image" id = "02_systemSoftwareDeveloper">
							<div class="post-heading">
								<h3><a href="#">시스템 소프트웨어 엔지니어</a></h3>
							</div>
							<img src="../img/jobAnalysys/02_systemSoftwareDeveloper.jpg" alt="" />
						</div>
				</article>
				<article>
						<div class="post-image" id = "03_computerProgrammar">
							<div class="post-heading">
								<h3><a href="#">컴퓨터 프로그래머</a></h3>
							</div>
							<img src="../img/jobAnalysys/03_computerProgrammar.jpg" alt="" />
						</div>
				</article>
				<article>
						<div class="post-image" id = "04_smartphoneAppDeveloper">
							<div class="post-heading">
								<h3><a href="#">스마트폰 앱 개발자</a></h3>
							</div>
							<img src="../img/jobAnalysys/04_smartphoneAppDeveloper.jpg" alt="" />
						</div>
				</article>
				<article>
						<div class="post-image" id = "05_appSoftwareProgrammar">
							<div class="post-heading">
								<h3><a href="#">응용 소프트웨어 개발자</a></h3>
							</div>
							<img src="../img/jobAnalysys/05_appSoftwareProgrammar.jpg" alt="" />
						</div>
				</article>
				<article>
						<div class="post-image" id = "06_databaseDeveloper">
							<div class="post-heading">
								<h3><a href="#">데이터베이스 개발자</a></h3>
							</div>
							<img src="../img/jobAnalysys/06_databaseDeveloper.jpg" alt="" />
						</div>
				</article>
				<article>
						<div class="post-image" id = "07_gameProgrammar">
							<div class="post-heading">
								<h3><a href="#">게임 프로그래머</a></h3>
							</div>
							<img src="../img/jobAnalysys/07_gameProgrammar.jpg" alt="" />
						</div>
				</article>
				<article>
						<div class="post-image" id = "08_computerHardwareEngineer">
							<div class="post-heading">
								<h3><a href="#">컴퓨터 하드웨어 관리자</a></h3>
							</div>
							<img src="../img/jobAnalysys/08_computerHardwareEngineer.jpg" alt="" />
						</div>
				</article>
				<article>
						<div class="post-image" id = "09_computerSecurity">
							<div class="post-heading">
								<h3><a href="#">컴퓨터 보안</a></h3>
							</div>
							<img src="../img/jobAnalysys/09_computerSecurity.jpg" alt="" />
						</div>
				</article>
				<article>
						<div class="post-image" id = "10_informationSystemManager"> 
							<div class="post-heading">
								<h3><a href="#">정보 시스템 관리자</a></h3>
							</div>
							<img src="../img/jobAnalysys/10_informationSystemManager.jpg" alt="" />
						</div>
				</article>
				<article>
						<div class="post-image" id = "11_networkEngineer">
							<div class="post-heading">
								<h3><a href="#">네트워크 엔지니어</a></h3>
							</div>
							<img src="../img/jobAnalysys/11_networkEngineer.jpg" alt="" />
						</div>
				</article>
				<article>
						<div class="post-image" id = "12_networkProgrammar">
							<div class="post-heading">
								<h3><a href="#">네트워크 프로그래머</a></h3>
							</div>
							<img src="../img/jobAnalysys/12_networkProgrammar.jpg" alt="" />
						</div>
				</article>
				<article>
						<div class="post-image" id = "13_networkManager">
							<div class="post-heading">
								<h3><a href="#">네트워크 매니져</a></h3>
							</div>
							<img src="../img/jobAnalysys/13_networkManager.jpg" alt="" />
						</div>
				</article>
				
				
				
				
				
			</div>
			<div class="col-lg-4" >
				<aside class="right-sidebar">
				<!-- <div class="widget">
					<form class="form-search">
						<input class="form-control" type="text" placeholder="Search..">
					</form>
				</div> -->
				<div class="widget" id = "floating">
					<h5 class="widgetheading">직무 분석</h5>
					<ul class="cat">
						<li><i class="icon-angle-right"></i><a href="#01_webProgrammar" class="arctic_scroll">웹 프로그래머</a></li>
						<li><i class="icon-angle-right"></i><a href="#02_systemSoftwareDeveloper" class="arctic_scroll">시스템 소프트웨어 엔지니어</a></li>
						<li><i class="icon-angle-right"></i><a href="#03_computerProgrammar" class="arctic_scroll">컴퓨터 프로그래머</a></li>
						<li><i class="icon-angle-right"></i><a href="#04_smartphoneAppDeveloper" class="arctic_scroll">스마트폰 앱 개발자</a></li>
						<li><i class="icon-angle-right"></i><a href="#05_appSoftwareProgrammar" class="arctic_scroll">응용 소프트웨어 개발자</a></li>
						<li><i class="icon-angle-right"></i><a href="#06_databaseDeveloper" class="arctic_scroll">데이터베이스 개발자</a></li>
						<li><i class="icon-angle-right"></i><a href="#07_gameProgrammar" class="arctic_scroll">게임 프로그래머</a></li>
						<li><i class="icon-angle-right"></i><a href="#08_computerHardwareEngineer" class="arctic_scroll">컴퓨터 하드웨어 관리자</a></li>
						<li><i class="icon-angle-right"></i><a href="#09_computerSecurity" class="arctic_scroll">컴퓨터 보안</a></li>
						<li><i class="icon-angle-right"></i><a href="#10_informationSystemManager" class="arctic_scroll">정보 시스템 관리자</a></li>
						<li><i class="icon-angle-right"></i><a href="#11_networkEngineer" class="arctic_scroll">네트워크 엔지니어</a></li>
						<li><i class="icon-angle-right"></i><a href="#12_networkProgrammar" class="arctic_scroll">네트워크 프로그래머</a></li>
						<li><i class="icon-angle-right"></i><a href="#13_networkManager" class="arctic_scroll">네트워크 매니저</a></li>
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
<script src="../js/jquery.js"></script>
<script src="../js/jquery.easing.1.3.js"></script>
<script src="../js/bootstrap.min.js"></script>
<script src="../js/jquery.fancybox.pack.js"></script>
<script src="../js/jquery.fancybox-media.js"></script>
<script src="../js/google-code-prettify/prettify.js"></script>
<script src="../js/portfolio/jquery.quicksand.js"></script>
<script src="../js/portfolio/setting.js"></script>
<script src="../js/jquery.flexslider.js"></script>
<script src="../js/animate.js"></script>
<script src="../js/custom.js"></script>
<script src="../js/jquery.1.7.1.js"></script>
<script src="../js/jquery.arctic_scroll.js"></script>
<script>
	$(function(){
	    $(".arctic_scroll").arctic_scroll({
	        speed: 800
	    });
	});
</script>
</body>
</html>