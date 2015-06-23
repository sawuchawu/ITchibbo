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
<link href="/css/tcal.css" rel="stylesheet"/>
<link href="/css/recruitBorder.css" rel="stylesheet"/>
<!-- Theme skin -->
<link href="/skins/default.css" rel="stylesheet" />
<!--  메뉴 별 따로 숨김 -->
<style>
    .gnbVr a{cursor:pointer;}
    .gnbVr .menuhide{display:none;}
</style>
<script type="text/javascript" src="/js/jquery-2.0.0.js"></script>
<script type="text/javascript">
$(document).ready(function(){
    // gnbVr 클래스 바로 하위에 있는 a 태그를 클릭했을때
    $(".gnbVr>a").click(function(){
        var submenu = $(this).next("ul");
        // submenu 가 화면상에 보일때는 위로 보드랍게 접고 아니면 아래로 보드랍게 펼치기
        if( submenu.is(":visible") ){
            submenu.slideUp(200);
        }else{
            submenu.slideDown(200);
        }
    });
	$("#title").text("자소서 '입사후포부' 어떻게 쓸까?");
	$("#origin").text("열려라 성공취업");
 	$("#lc").attr("src","https://www.youtube.com/embed/DymSS4clcpE");
});
<!--  다른 메뉴 클릭 시 숨김  -->
/*   $(function(){
	  $('#menu1').click(function(e){
		  if(e.target.id=="menu1"){
			alert(e.target.id);  
		  }
	  });
	var gnbVr = $('.gnbVr');
	gnbVr.find('>ul').hide();
	gnbVr.find('>a[href=#]')
	
			.click(function(){
			gnbVr
			.find('ul:visible')
				.slideUp(200)
				//.parent('li')
				//.removeClass('active')
				.find('>a')
				.css('fontWeight','');
			$(this)
				.next('ul:hidden')
				.slideDown(200)
				//.parent('li')
				//.addClass('active')
				.find('>a')
				.css('fontWeight','bold');
		})	
	$("#title").text("자소서 '입사후포부' 어떻게 쓸까?");
	$("#origin").text("열려라 성공취업");
 	$("#lc").attr("src","https://www.youtube.com/embed/DymSS4clcpE");
});   */
function lecture(urls, org){
	var url = urls;
	var origin = org;

	
	$("#lectureList").click(function(e) {
		if(e.target.id=="lcUrl"){
	 	$("#title").text($(e.target).text());
		$("#origin").text(origin);
	 	$("#lc").attr("src",url);
		}
		//alert(id);
		});
}
</script>
<script type="text/javascript" src="/js/xdomainajax.js"></script>
<script type="text/javascript" src="/js/xml2json.js"></script>
<script type="text/javascript" src="/js/parsing.js"></script>
<script type="text/javascript" src="/js/paging.js"></script>
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
<script type="text/javascript" src="/js/tcal.js"></script>
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
								<li><a href="/jsp/jobInfo/jobLecture/lecture.jsp">취업강의</a></li>
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
					<li class="active">취업강의</li>
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
								<table>
									<colgroup>
										<col width="800"><col width="20"><col width="60">
									</colgroup>
									<tr>
										<td><span id="title" style="font-size: 16px; font-weight: bold; word-spacing:5px"></span></td>
										<td></td>
									</tr>
									<tr><td height="8"></td></tr>
								</table>
								<table cellspacing="0" border="1" class="tbl_type1">
									<colgroup>
										<col width="20"><col width="170"><col width="60"><col width="170">
									</colgroup>
									<tr>
										<th scope="row" id="ss"><center>출처</center></th>
										<td colspan="3" id="origin"></td>
									</tr>
									<tr class="map">
										<th scope="row" ><center>내용</center></th>
										<td colspan="3" id="ind_cd">
											<iframe id="lc" width="420" height="315" src="" frameborder="0" allowfullscreen></iframe>
										</td>
										<!-- <td colspan="3" id="ind_cd"></td> -->
									</tr>
								</table>
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
			</div>
			<div class="col-lg-4">
				<aside class="right-sidebar">
				<!-- <div class="widget">
					<form class="form-search">
						<input class="form-control" type="text" placeholder="Search..">
					</form>
				</div> -->

				<div class="widget">
					<h4 class="widgetheading">강좌목록</h4>

					<ul class="cat"  id="lectureList">
					<li class="gnbVr" id="menu1"><a href="#">자소서</a>
						<ul class="menuhide">
						<li></li>
							<li onclick="lecture('https://www.youtube.com/embed/DymSS4clcpE','열려라 성공취업');"><a id="lcUrl" href="#">자소서 '입사후포부' 어떻게 쓸까?</a></li>
							<li onclick="lecture('https://www.youtube.com/embed/FdoCIVLKICk','열려라 성공취업');"><a id="lcUrl" href="#">자소서 '지원동기' 어떻게 쓸까?</a></li>
							<li onclick="lecture('https://www.youtube.com/embed/v-DB3rP_HnE','열려라 성공취업');"><a id="lcUrl" href="#">자소서 작성 이런점이 어렵다 -1-</a></li>
							<li onclick="lecture('https://www.youtube.com/embed/-k5ix2zjeAU','열려라 성공취업');"><a id="lcUrl" href="#">자소서 작성 이런점이 어렵다 -2-</a></li>
							<li onclick="lecture('https://www.youtube.com/embed/FTlUs9BEpAU','취업정보센터');"><a id="lcUrl" href="#">소재개발과 작성법</a></li>
							<li onclick="lecture('https://www.youtube.com/embed/0kLQvx3ISHA','취업정보센터');"><a id="lcUrl" href="#">소재개발과 작성법2</a></li>
							<li onclick="lecture('https://www.youtube.com/embed/8wmT8y1Ffyo','취업정보센터');"><a id="lcUrl" href="#">자기소개서 분량은 어느정도가 적당할까요?</a></li>
							<li onclick="lecture('https://www.youtube.com/embed/ivESPE37ivc','취업&');"><a id="lcUrl" href="#">사례로 보는 자기소개서 작성법</a></li>
							<li onclick="lecture('https://www.youtube.com/embed/yQp0czfEGxQ','취업&');"><a id="lcUrl" href="#">공채 대비 자기소개서 기본기</a></li>
						</ul>
					</li>
		
					<li class="gnbVr" id="menu2"><a href="#">면접</a>
						<ul class="menuhide">
						<li></li>
							<li onclick="lecture('https://www.youtube.com/embed/EqcKy-DsnuQ','열려라 성공취업');"><a id="lcUrl" href="#">내가 면접에서 탈락한 이유는?</a></li>
							<li onclick="lecture('https://www.youtube.com/embed/P0U1iyEzva0','취업의 전설');"><a id="lcUrl" href="#">LG전자 모의 1분스피치! 심층면접</a></li>
							<li onclick="lecture('https://www.youtube.com/embed/XOxrJ3YZSyc','잡매거진');"><a id="lcUrl" href="#">공감100% - 면접 그 불편한 관문!</a></li>
							<li onclick="lecture('https://www.youtube.com/embed/O-SkBkXpBqE','잡매거진');"><a id="lcUrl" href="#">공감100% - 면접 그 불편한 관문! 제2탄 '주제에 맞는 면접'</a></li>
							<li onclick="lecture('https://www.youtube.com/embed/JCagd8yq6gw','잡매거진');"><a id="lcUrl" href="#">공감100% - 면접 그 불편한 관문! 제3탄 '인성면접'</a></li>
							<li onclick="lecture('https://www.youtube.com/embed/lKJNc8ITEZI','잡매거진');"><a id="lcUrl" href="#">공감100% - 면접 그 불편한 관문! 제4탄 '논리로 승부하라'</a></li>
							<li onclick="lecture('https://www.youtube.com/embed/QoH-IF0L3mU','잡매거진');"><a id="lcUrl" href="#">면접 단골 질문, 대비법!</a></li>
							<li onclick="lecture('https://www.youtube.com/embed/b5sV_dLzYGw','잡매거진');"><a id="lcUrl" href="#">토론면접 집중분석_면접클리닉</a></li>
							<li onclick="lecture('https://www.youtube.com/embed/raVyaU-ySR4','취업 멘토링 Q&A');"><a id="lcUrl" href="#">면접시 긴장하지 않는 비법은? </a></li>
							<li onclick="lecture('https://www.youtube.com/embed/p6s2HCF9ipg','취업&');"><a id="lcUrl" href="#">면접관을 사로잡는 이력서/자기소개서 작성법</a></li>
						</ul>
					</li>
					<li class="gnbVr" id="menu3"><a href="#">기타</a>
					<ul class="menuhide">
						<li></li>
							<li onclick="lecture('https://www.youtube.com/embed/VVBpmyjKLYo','취업정보센터');"><a id="lcUrl" href="#">게임빌 인턴 공채전략</a></li>
							<li onclick="lecture('https://www.youtube.com/embed/U0bR4twBwlA','취업정보센터');"><a id="lcUrl" href="#">제니퍼소프트 공채전략</a></li>
							<li onclick="lecture('https://www.youtube.com/embed/xSxS3ItaqvI','취업정보센터');"><a id="lcUrl" href="#">위메프 공채전략</a></li>
							<li onclick="lecture('https://www.youtube.com/embed/QXhCRN1qDNo','취업정보센터');"><a id="lcUrl" href="#">쿠팡 공채전략</a></li>
							<li onclick="lecture('https://www.youtube.com/embed/PLNy69A6kLg','취업정보센터');"><a id="lcUrl" href="#">이베이코리아 공채전략</a></li>
							<li onclick="lecture('https://www.youtube.com/embed/pNpiQ_5SsoA','취업정보센터');"><a id="lcUrl" href="#">마이다스아이티 공채전략</a></li>
							<li onclick="lecture('https://www.youtube.com/embed/Gf2ogFjOiV0','취업정보센터');"><a id="lcUrl" href="#">KT렌탈 공채전략</a></li>
							<li onclick="lecture('https://www.youtube.com/embed/PdMfphrVoaU','취업정보센터');"><a id="lcUrl" href="#">한국전기안전공사 공채전략</a></li>
							<li onclick="lecture('https://www.youtube.com/embed/tv9B7EoL7fw','취업&');"><a id="lcUrl" href="#">LG유플러스 공채전략 </a></li>
							<li onclick="lecture('https://www.youtube.com/embed/Bsalu5lxAmY','취업정보센터');"><a id="lcUrl" href="#">이스트소프트, 아이에스동서, 쏠리드</a></li>
						</ul>
						</li>
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
</body>
</html>