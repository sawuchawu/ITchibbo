<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
<style type="text/css">
#mInfo{
	font-weight: bold;
	font-size: 15px;
}
</style>


<!-- Theme skin -->
<link href="/skins/default.css" rel="stylesheet" />

<!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
<script type="text/javascript" src="/js/jquery-2.0.0.js"></script>
<script type="text/javascript">
$(document).ready(function(){
new WOW().init();		//	팀원 소개 효과 함수
});
</script>
</head>
<body onload="logProcess('dd')">
<!-- <form action="/app/logout.action" method="post"><button type="submit">logout</button></form> -->
<%-- ${id }
<%=session.getAttribute("id") %> --%>
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
					<li class="active">CONTACT</li>
				</ul>
			</div>
		</div>
	</div>
	</section>
	<section id="content" class="home-section text-center">
	<div class="map">
		<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1582.6793950987917!2d127.0335184828165!3d37.49945510766375!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357ca1563e76bc39%3A0x438fa7c6bd828a18!2z7ZWc64-F7JW97ZKI67mM65Sp!5e0!3m2!1sja!2s!4v1433923856581"></iframe>
	</div>
	
	<div class="container">
			<div class="heading-about">
			<div class="container">
			<div class="row">
				<div class="col-lg-8 col-lg-offset-2">
					<div class="wow bounceInDown" data-wow-delay="0.4s">
					<div class="section-heading">
					<h2>팀원소개</h2>
					<i class="fa fa-2x fa-angle-down"></i>

					</div>
					</div>
				</div>
			</div>
			</div>
		</div>
	   <div class="row">
           <div class="col-xs-6 col-sm-3 col-md-3">
				<div class="wow bounceInUp" data-wow-delay="0.2s">
                <div class="team boxed-grey">
                    <div class="inner">
                        <div class="avatar"><img src="/img/team/ksc.png" alt="" class="img-responsive img-circle"/></div>
						<h3>김상찬</h3>
						<div id="mInfo">
                        <p class="email">s_chai@naver.com</p>
                        <p class="subtitle">개발자</p>
                        <p class="say">"IT 직무 취뽀합시다!!"</p>
						</div>                       
                    </div>
                </div>
				</div>
            </div>
			<div class="col-xs-6 col-sm-3 col-md-3">
				<div class="wow bounceInUp" data-wow-delay="0.5s">
                <div class="team boxed-grey">
                    <div class="inner">
                        <div class="avatar"><img src="/img/team/bws.jpg" alt="" class="img-responsive img-circle"/></div>
						<h3>방운섭</h3>
						<div id="mInfo">
                        <p class="email">finary@naver.com</p>
                        <p class="subtitle">개발자</p>
                        <p class="say">"잘 되고 봅시다!"</p>
						</div>
                    </div>
                </div>
				</div>
            </div>
			<div class="col-xs-6 col-sm-3 col-md-3">
				<div class="wow bounceInUp" data-wow-delay="0.8s">
                <div class="team boxed-grey">
                    <div class="inner">
                        <div class="avatar"><img src="/img/team/kbs.jpg" alt="" class="img-responsive img-circle"/></div>
						<h3>곽범석</h3>
						<div id="mInfo">
                        <p class="email">sangchan1@naver.com</p>
                        <p class="subtitle">개발자</p>
                        <p class="say">하고싶은말</p>
                        </div>
                    </div>
                </div>
				</div>
            </div>
			<div class="col-xs-6 col-sm-3 col-md-3">
				<div class="wow bounceInUp" data-wow-delay="1s">
                <div class="team boxed-grey">
                    <div class="inner">
                        <div class="avatar"><img src="/img/team/lje.jpg" alt="" class="img-responsive img-circle"/></div>
						<h3>이지은</h3>
						<div id="mInfo">
                        <p class="email">jieunlee8789@naver.com</p>
                        <p class="subtitle">개발자</p>
                        <p class="say">"나는 아무 생각이 없다. 왜냐하면 아무 생각이 없기 때문이다."</p>
                        </div>
                    </div>
                </div>
				</div>
            </div>
        
        
			</div>
	   <div class="row">
           <div class="col-xs-6 col-sm-3 col-md-3">
				<div class="wow bounceInUp" data-wow-delay="0.2s">
                <div class="team boxed-grey">
                    <div class="inner">
                        <div class="avatar"><img src="/img/team/ksh.jpg" alt="" class="img-responsive img-circle"/></div>
						<h3>강신혜</h3>
						<div id="mInfo">
                        <p class="email">shinhyekang@naver.com</p>
                        <p class="subtitle">개발자</p>
                        <p class="say">"돈 많이 법시다!!!"</p>
                        </div>
                    </div>
                </div>
				</div>
            </div>
			<div class="col-xs-6 col-sm-3 col-md-3">
				<div class="wow bounceInUp" data-wow-delay="0.5s">
                <div class="team boxed-grey">
                    <div class="inner">
                        <div class="avatar"><img src="/img/team/kty.jpg" alt="" class="img-responsive img-circle"/></div>
						<h3>김태영</h3>
						<div id="mInfo">
                        <p class="email">kimty0307@nate.com</p>
                        <p class="subtitle">개발자</p>
                        <p class="say">"올해 안에는 우리 모두 직장인이 되어있길!"</p>
						</div>
                    </div>
                </div>
				</div>
            </div>
			<div class="col-xs-6 col-sm-3 col-md-3">
				<div class="wow bounceInUp" data-wow-delay="0.8s">
                <div class="team boxed-grey">
                    <div class="inner">
                        <div class="avatar"><img src="/img/team/ctw.jpg" alt="" class="img-responsive img-circle"/></div>
						<h3>최태웅</h3>
						<div id="mInfo">
                        <p class="email">lognl@naver.com</p>
                        <p class="subtitle">개발자</p>
                        <p class="say">"잘 먹고 잘 살자"</p>
						</div>
                    </div>
                </div>
				</div>
            </div>
			<div class="col-xs-6 col-sm-3 col-md-3">
				<div class="wow bounceInUp" data-wow-delay="1s">
                <div class="team boxed-grey">
                    <div class="inner">
                        <div class="avatar"><img src="/img/team/hjs.jpg" alt="" class="img-responsive img-circle"/></div>
						<h3>홍지성</h3>
						<div id="mInfo">
                        <p class="email">jshong0713@hanmail.net</p>
                        <p class="subtitle">개발자</p>
                        <p class="say">"내가 하고싶은걸 하자"</p>
                        </div>
                    </div>
                </div>
				</div>
            </div>
        
        
			</div>
			
		</div>
	</section>
	</div>
	<footer>

<%@ include file="/jsp/bottominfo.jsp" %>

	</footer>
</div>
<a href="#" class="scrollup"><i class="fa fa-angle-up active"></i></a>
<!-- javascript
    ================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="/js/jquery.js"></script>
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
<script src="/js/validate.js"></script>
<script src="/js/wow.min.js"></script>
</body>
</html>
