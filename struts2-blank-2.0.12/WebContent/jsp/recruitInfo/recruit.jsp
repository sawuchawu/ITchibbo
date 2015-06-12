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

<script type="text/javascript" src="/js/jquery-2.0.0.js"></script>
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
<script type="text/javascript">
$(document).ready(function() {
	parsing(0);
	jobParsing(401);jobParsing(402);jobParsing(403);jobParsing(404);jobParsing(406);jobParsing(407);jobParsing(408);jobParsing(409);
	jobParsing(410);jobParsing(411);jobParsing(412);jobParsing(413);jobParsing(414);jobParsing(415);jobParsing(416);jobParsing(405);
	$("div#recInfo").hide();
});

// 직무별 url 생성
function jobSearch(val){
	$("div#sub_tab_panel").show();
	$("div#rList").show();
	$("div#page").show();
	$("div#recInfo").hide();
	
	$("tr#ind_cd_tr").hide();
	$("tr#job_category_tr").hide();
	
	
	jobSearchUrl(val);
}

// 초기화
function reset(){
	// 체크박스 라디오박스 초기화 시키기
	var deadline = $("input#date").val("");
	var keywords = $("input#keywords").val("");
}

</script>


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
					<li class="active">채용공고</li>
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
								<div class="sub_tab_panel" id="sub_tab_panel">
									<div class="sub-tab-con">
										<table width="100%" cellspacing="0" cellpadding="0" border="0"
											class="sub-tab-type01">
											<tbody>
												<tr>
													<td style="padding: 10px 12px;">
														<!-- 결과내검색 시작 -->
							
														<table width="100%" cellspacing="1" cellpadding="0" border="0">
															<tbody>
																<tr id="ind_cd_tr">
																	<td width="8" height="19">
																		<img width="3" src="http://www.saraminimage.co.kr/recruit/talent/bullet_job_list.gif"></td>
																	<td width="85" style="padding: 4 0 0 0" class="gulim12"><b>
																		<font color="#444444">업종</font></b></td>
																	<td style="padding: 7px 0" class="dotum11">
																		<table width="100%" cellspacing="0" cellpadding="0"	border="0" class="tbl_type2">
																			<tbody>
																				<tr>
																					<td class="dotum11">
																					<input type="checkbox" name="ind_cd" id="ind_cd" value="301" />솔루션·SI·ERP·CRM &nbsp;&nbsp;&nbsp;&nbsp;
																					<input type="checkbox" name="ind_cd" id="ind_cd" value="302" />웹에이젼시 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
																					<input type="checkbox" name="ind_cd" id="ind_cd" value="304" />쇼핑몰·오픈마켓 &nbsp;
																					<input type="checkbox" name="ind_cd" id="ind_cd" value="305" />포털·인터넷·컨텐츠 &nbsp;<br>
																					</td>
																				</tr>
																				<tr>
																					<td class="dotum11">
																					<input type="checkbox" name="ind_cd" id="ind_cd" value="306" />네트워크·통신·모바일 &nbsp;
																					<input type="checkbox" name="ind_cd" id="ind_cd" value="307" />하드웨어·장비 &nbsp;
																					<input type="checkbox" name="ind_cd" id="ind_cd" value="308" />정보보안·백신 &nbsp;&nbsp;&nbsp;&nbsp;
																					<input type="checkbox" name="ind_cd" id="ind_cd" value="313" />IT컨설팅 &nbsp;
																					<input type="checkbox" name="ind_cd" id="ind_cd" value="314" />게임 &nbsp;
																					</td>
																				</tr>
																			</tbody>
																		</table>
																	</td>
																</tr>
																<tr id="ind_cd_tr"><td height="1" background="http://www.saraminimage.co.kr/recruit/new/s_bg_06.gif" colspan="3"></td></tr>
																<tr id="job_category_tr">
																	<td width="8" height="19">
																		<img width="3" src="http://www.saraminimage.co.kr/recruit/talent/bullet_job_list.gif"></td>
																	<td width="85" style="padding: 4 0 0 0" class="gulim12"><b>
																		<font color="#444444">직무</font></b></td>
																	<td style="padding: 7px 0" class="dotum11">
																		<table width="100%" cellspacing="0" cellpadding="0"	border="0" class="tbl_type2">
																			<tbody>
																				<tr>
																					<td class="dotum11">
																					<input type="checkbox" name="job_category" id="job_category" value="401" />웹마스터·QA·테스터 &nbsp;
																					<input type="checkbox" name="job_category" id="job_category" value="402" />서버·네트워크·보안 &nbsp;
																					<input type="checkbox" name="job_category" id="job_category" value="403" />웹기획·웹마케팅·PM &nbsp;
																					<input type="checkbox" name="job_category" id="job_category" value="404" />웹프로그래머 &nbsp; <br>
																					<input type="checkbox" name="job_category" id="job_category" value="406" />컨텐츠·사이트운영 &nbsp;
																					<input type="checkbox" name="job_category" id="job_category" value="407" />응용프로그래머 &nbsp;
																					<input type="checkbox" name="job_category" id="job_category" value="408" />시스템프로그래머 &nbsp;
																					<input type="checkbox" name="job_category" id="job_category" value="409" />ERP·시스템분석·설계 &nbsp;<br>
																					<input type="checkbox" name="job_category" id="job_category" value="410" />통신·모바일 &nbsp;
																					<input type="checkbox" name="job_category" id="job_category" value="411" />HW·SW &nbsp;
																					<input type="checkbox" name="job_category" id="job_category" value="412" />웹디자인 &nbsp;
																					<input type="checkbox" name="job_category" id="job_category" value="413" />HTML·웹표준·UI개발 &nbsp;
																					<input type="checkbox" name="job_category" id="job_category" value="414" />동영상·편집·코덱 &nbsp;<br>
																					<input type="checkbox" name="job_category" id="job_category" value="415" />IT·디자인·컴퓨터교육 &nbsp;
																					<input type="checkbox" name="job_category" id="job_category" value="416" />데이터베이스 &nbsp;
																					<input type="checkbox" name="job_category" id="job_category" value="405" />게임 &nbsp; 
																					</td>
																				</tr>
																			</tbody>
																		</table>
																	</td>
																</tr>
																<tr id="job_category_tr"><td height="1" background="http://www.saraminimage.co.kr/recruit/new/s_bg_06.gif" colspan="3"></td></tr>
																<tr>
																	<td width="8" height="19">
																		<img width="3" src="http://www.saraminimage.co.kr/recruit/talent/bullet_job_list.gif"></td>
																	<td width="85" style="padding: 4 0 0 0" class="gulim12">
																		<b><font color="#444444">지역</font></b></td>
																	<td style="padding: 7px 0" class="dotum11">
																		<table width="100%" cellspacing="0" cellpadding="0"
																			border="0" class="tbl_type2">
																			<tbody>
																				<tr>
																					<td class="dotum11">
																					<input type="checkbox" name="loc_cd" id="loc_cd" value="101000" />서울 &nbsp;
																					<input type="checkbox" name="loc_cd" id="loc_cd" value="106000" />부산 &nbsp;
																					<input type="checkbox" name="loc_cd" id="loc_cd" value="108000" />인천 &nbsp;
																					<input type="checkbox" name="loc_cd" id="loc_cd" value="104000" />대구 &nbsp;
																					<input type="checkbox" name="loc_cd" id="loc_cd" value="105000" />대전 &nbsp;
																					<input type="checkbox" name="loc_cd" id="loc_cd" value="103000" />광주 &nbsp;
																					<input type="checkbox" name="loc_cd" id="loc_cd" value="107000" />울산 &nbsp;
																					<input type="checkbox" name="loc_cd" id="loc_cd" value="116000" />제주 &nbsp;
																					<input type="checkbox" name="loc_cd" id="loc_cd" value="118000" />세종 &nbsp;
																					</td>
																				</tr>
																				<tr>
																					<td class="dotum11">
																					<input type="checkbox" name="loc_cd" id="loc_cd" value="102000" />경기 &nbsp;
																					<input type="checkbox" name="loc_cd" id="loc_cd" value="111000" />경북 &nbsp;
																					<input type="checkbox" name="loc_cd" id="loc_cd" value="110000" />경남 &nbsp;
																					<input type="checkbox" name="loc_cd" id="loc_cd" value="113000" />전북 &nbsp;
																					<input type="checkbox" name="loc_cd" id="loc_cd" value="112000" />전남 &nbsp;
																					<input type="checkbox" name="loc_cd" id="loc_cd" value="114000" />충북 &nbsp;
																					<input type="checkbox" name="loc_cd" id="loc_cd" value="115000" />충남 &nbsp;
																					<input type="checkbox" name="loc_cd" id="loc_cd" value="109000" />강원 &nbsp;
																					</td>
																				</tr>
																			</tbody>
																		</table>
																	</td>
																</tr>
																<tr><td height="1" background="http://www.saraminimage.co.kr/recruit/new/s_bg_06.gif" colspan="3"></td></tr>
																<tr>
																	<td width="8" height="19">
																		<img width="3" src="http://www.saraminimage.co.kr/recruit/talent/bullet_job_list.gif"></td>
																	<td width="85" style="padding: 4 0 0 0" class="gulim12">
																		<b><font color="#444444">학력</font></b>
																	</td>
																	<td style="padding: 7px 0" class="dotum11">
																		<table border="0" cellpadding="0" cellspacing="0" class="tbl_type2" width="100%">
																			<tbody>
																				<tr>
																					<td width="61%" class="dotum11">
																						<input type="radio" name="edu_lv" value="1">고등학교 졸업
																						<input type="radio" name="edu_lv" value="2">대학(2,3년) 졸업
																						<input type="radio" name="edu_lv" value="3">대학교(4년) 졸업
																						<input type="radio" name="edu_lv" value="4">석사졸업
																						<input type="radio" name="edu_lv" value="5">박사졸업
																						<input type="radio" name="edu_lv" value="99">학력무관
																					</td>
																				</tr>
																			</tbody>
																		</table>
																	</td>
																</tr>
																<tr><td height="1" background="http://www.saraminimage.co.kr/recruit/new/s_bg_06.gif"colspan="3"></td></tr>
																<tr>
																	<td width="8" height="19">
																		<img width="3" src="http://www.saraminimage.co.kr/recruit/talent/bullet_job_list.gif">
																	</td>
																	<td width="85" style="padding: 4 0 0 0" class="gulim12"><b>
																		<font color="#444444">근무형태</font></b>
																	</td>
																	<td style="padding: 7px 0" class="dotum11">
																		<input type="checkbox" name="job_type"  value="1">정규직
																		<input type="checkbox" name="job_type"  value="2">계약직
																		<input type="checkbox" name="job_type"  value="4">인턴직
																		<input type="checkbox" name="job_type"  value="11">인턴직 (정규직 전환가능)
																		<input type="checkbox" name="job_type"  value="7">해외취업
																		<input type="checkbox" name="job_type"  value="9">프리랜서
																	</td>
																</tr>
																<tr><td height="1" background="http://www.saraminimage.co.kr/recruit/new/s_bg_06.gif" colspan="3"></td></tr>
																<tr>
																	<td width="8" height="19">
																		<img width="3" src="http://www.saraminimage.co.kr/recruit/talent/bullet_job_list.gif">
																	</td>
																	<td width="85" style="padding: 4 0 0 0" class="gulim12">
																		<b><font color="#444444">마감일</font></b>
																	</td>
																	<td style="padding: 7px 0" class="dotum11">
																		<input type="text"  class="tcal" id="date" name="deadline" value="" size="10"/>
																	</td>
																</tr>
																<tr><td height="1" background="http://www.saraminimage.co.kr/recruit/new/s_bg_06.gif" colspan="3"></td></tr>
																<tr>
																	<td width="8" height="19">
																		<img width="3" src="http://www.saraminimage.co.kr/recruit/talent/bullet_job_list.gif">
																	</td>
																	<td width="85" style="padding: 4 0 0 0" class="gulim12">
																		<b><font color="#444444">키워드</font></b>
																	</td>
																	<td style="padding: 7px 0" class="dotum11">
																		<input type="text" name="keywords" id="keywords" class="textareabg" value="" 
																		style="border: 1px; border-color: #84b8f0; border-style: solid; background-color: #f4faff; width: 260px;" />&nbsp;
																	</td>
																</tr>
																<tr>
																	<!-- 선택 조건 초기화 버튼 -->
																	<td height="21" background="http://www.saraminimage.co.kr/alba/common/new/line_gray_02.gif" 
																		align="right" colspan="3">
																		<a href="javascript:reset();">
																		<img width="84" height="17" border="0" src="http://www.saraminimage.co.kr/alba/button/btn_reset.gif">
																		</a></td>
																</tr>
																<tr>
																	<td height="31" align="center" colspan="3"><img
																		width="186" height="35" border="0"
																		onclick="searchUrl();"
																		style="cursor: pointer; cursor: hand;" alt="선택한 조건으로 검색"
																		src="http://www.saraminimage.co.kr/buttons/default/search004.gif">
																	</td>
																</tr>
															</tbody>
														</table>
													</td>
												</tr>
												<tr>
													<td colspan="3">
														<table width="100%" cellspacing="0" cellpadding="0">
															<tbody>
																<tr>
																	<td>
																		<table width="100%" cellspacing="0" cellpadding="0"
																			class="panel_bg">
																			<tbody>
																				<tr>
																					<td>
																						<div class="panel_bottom">
																							<div class="pb_wrap">
																								<div class="text01">
																									선택하신 조건으로 총 <B><span class="red" id="count"></span></B>건 검색되었습니다.
																								</div>
																							</div>
																						</div>
																					</td>
																				</tr>
																			</tbody>
																		</table>
																	</td>
																</tr>
															</tbody>
														</table>
													</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
						<div id="rList">
							<table class="tbl_type" border="1" cellspacing="0" summary="게시판의 글제목 리스트">
								<caption>게시판 리스트</caption>
								<colgroup>
									<col widh="540px"><col width="200px">
								</colgroup>
								<thead>
									<tr>
										<th scope="col" align="center">제목 |<span class="head-description"> 근무형태/연봉</span></th>
										<th scope="col" align="center">마감일</th>
									</tr>
								</thead>
								<tbody id="list">
									
								</tbody>
							</table><br>
	
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
				<!-- recruit INFO -->
				<div id="recInfo">
				 
				
				<table>
					<colgroup>
						<col width="800"><col width="20"><col width="60">
					</colgroup>
					<tr>
						<td><span id="title" style="font-size: 16px; font-weight: bold; word-spacing:5px"></span></td>
						<td></td>
						<td><a href="#" class="btn btn-info">스크랩</a></td>
					</tr>
					<tr><td height="8"></td></tr>
				</table>
				<table cellspacing="0" border="1" class="tbl_type1">
					<colgroup>
						<col width="60"><col width="170"><col width="60"><col width="170">
					</colgroup>
					<tr>
						<th scope="row" >&nbsp;&nbsp;마감일</th>
						<td colspan="3" id="deadline"></td>
					</tr>
					<tr>
						<th scope="row" >&nbsp;&nbsp;업종</th>
						<td colspan="3" id="ind_cd"></td>
					</tr>
					<tr>
						<th scope="row" >&nbsp;&nbsp;직무</th>
						<td colspan="3" id="job_category"></td>
					</tr>
					<tbody>
					<tr>
						<th scope="row">&nbsp;&nbsp;고용형태</th>
						<td colspan="3" id="job_type"></td>
					</tr>
					<tr>
						<th scope="row">&nbsp;&nbsp;경력</th>
						<td id="experience_level"></td>
						<th scope="row">&nbsp;&nbsp;학력</th>
						<td id="edu_lv"></td>
					</tr>
					</tr>
					<tr>
						<th scope="row">&nbsp;&nbsp;연봉</th>
						<td colspan="3" id="salary"></td>
					</tr>
					</tbody>
				</table><br>
				<center><a href="#" id="info"class="btn btn-info">채용공고 자세히 보기</a></center>
				</div>
				<!-- //recruit INFO -->
				
			</div>
			<div class="col-lg-4">
				<aside class="right-sidebar">
				<!-- <div class="widget">
					<form class="form-search">
						<input class="form-control" type="text" placeholder="Search..">
					</form>
				</div> -->
				<div class="widget">
					<h4 class="widgetheading">직무별</h4>
					<ul class="cat">
						<li><i class="icon-angle-right"></i><a href="javascript:jobSearch(401);">웹마스터·QA·테스터</a><span id="j1"></span></li>
						<li><i class="icon-angle-right"></i><a href="javascript:jobSearch(402);">서버·네트워크·보안</a><span id="j2"></span></li>
						<li><i class="icon-angle-right"></i><a href="javascript:jobSearch(403);">웹기획·웹마케팅·PM</a><span id="j3"></span></li>
						<li><i class="icon-angle-right"></i><a href="javascript:jobSearch(404);">웹프로그래머</a><span id="j4"></span></li>
						<li><i class="icon-angle-right"></i><a href="javascript:jobSearch(406);">컨텐츠·사이트운영</a><span id="j6"></span></li>
						<li><i class="icon-angle-right"></i><a href="javascript:jobSearch(407);">응용프로그래머</a><span id="j7"></span></li>
						<li><i class="icon-angle-right"></i><a href="javascript:jobSearch(408);">시스템프로그래머</a><span id="j8"></span></li>
						<li><i class="icon-angle-right"></i><a href="javascript:jobSearch(409);">ERP·시스템분석·설계</a><span id="j9"></span></li>
						<li><i class="icon-angle-right"></i><a href="javascript:jobSearch(410);">통신·모바일</a><span id="j10"></span></li>
						<li><i class="icon-angle-right"></i><a href="javascript:jobSearch(411);">HW·SW</a><span id="j11"></span></li>
						<li><i class="icon-angle-right"></i><a href="javascript:jobSearch(412);">웹디자인</a><span id="j12"></span></li>
						<li><i class="icon-angle-right"></i><a href="javascript:jobSearch(413);">HTML·웹표준·UI개발</a><span id="j13"></span></li>
						<li><i class="icon-angle-right"></i><a href="javascript:jobSearch(414);">동영상·편집·코덱</a><span id="j14"></span></li>
						<li><i class="icon-angle-right"></i><a href="javascript:jobSearch(415);">IT·디자인·컴퓨터교육</a><span id="j15"></span></li>
						<li><i class="icon-angle-right"></i><a href="javascript:jobSearch(416);">데이터베이스   </a><span id="j16"></span></li>
						<li><i class="icon-angle-right"></i><a href="javascript:jobSearch(405);">게임</a><span id="j5"></span></li>
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
</body>
</html>