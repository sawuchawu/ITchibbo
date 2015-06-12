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
<!-- Theme skin -->
<link href="/skins/default.css" rel="stylesheet" />

<!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
<link href="/css/bootstrap.min.css" rel="stylesheet" />
<link href="/css/fancybox/jquery.fancybox.css" rel="stylesheet">
<link href="/css/jcarousel.css" rel="stylesheet" />
<link href="/css/flexslider.css" rel="stylesheet" />
<link href="/css/style.css" rel="stylesheet" />
<link href="/css/recruitList.css" rel="stylesheet" />
<link href="/css/button.css" rel="stylesheet" />
<link href="/css/portfolioEdit.css" rel="stylesheet" />

<script type="text/javascript" src="/js/jquery-2.0.0.js"></script>
<script type="text/javascript" src="/js/xdomainajax.js"></script>
<script type="text/javascript" src="/js/xml2json.js"></script>
<script type="text/javascript" src="/js/calcDate.js"></script>
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
<script type="text/javascript">
$(document).ready(function() {
	parsing(1);
});

function parsing(i){
	var url = "http://api.saramin.co.kr/job-search?ind_cd=301,302,304,305,306,307,308&start="+i+"&count=10&sort=pd";
		
	$.ajax({
		type : "GET",
		dataType : "xml",
		async: false,
		url : url,
		success : function(xml) {
			var xmlDoc = $.parseXML(xml.responseText);
			var xmlData = $(xmlDoc).find("job");
			var listLength = xmlData.length;
			var textXML = xml.responseText; 				// xml을 text 형식으로 가져온다.
			var dataJson = $.xml2json(textXML); 			// xml 파싱하여 가져온 text를 json형태로 바꿔준다.
			var data = dataJson.body.job_search.jobs.job; 	// job 까지의 위치 
			var total = dataJson.body.job_search.jobs.total // 총 게시글 개수
			var contentStr = "";
			
			$(data).each(function(i) {
				
				var title = data[i].position.job_category.text; 	// 제목 : 직무 + "채용" (임시방편->제목 파싱 가능하면 바꿀것)
				var job_type = data[i].position.job_type.text; 		// 근무형태
				var salary = data[i].salary.text; 					// 연봉
				var expiration = data[i].expiration_timestamp; 		// 마감일
				var expDate = new Date(expiration*1000);			// 유닉스 timeStamp를 날짜형으로 변환
				var epMonth = expDate.getMonth()+1;
				var epDate = expDate.getDate();
				var epDay = getWeekday(expDate.getDay());
				var dDay = getDday(expDate);
				var rId = data[i].id;	// 채용공고 id 값 넘기기
				
				// <a href="/expo/dataInfo.action?exp_no=${i.exp_no}&job=info">${i.exp_title}</a> -> info 페이지 링크
				contentStr +="<tr>"+ 
							 "<td class='title'><a href=><b>"+
				        		 title +" 채용</b><br>"+
							     "<span class='head-description'>"+ job_type +"/"+ salary +"</span></a>"+
							  "</td>" +
							  "<td>" + epMonth + "/" + epDate + "("+ epDay +")</br>D"+ dDay +"</td>"+
							  "</tr>";
			});
			$("tbody#list").html(contentStr);
			printListPaging(i, total);
		}
	});
}

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
					<li class="active">채용공고</li>
				</ul>
			</div>
		</div>
	</div>
	</section>
	<section id="content">
	<div class="container">
		<div class="row">
			<div class="col-side">
				<h4>취업 가이드</h4>
				<h5>취업후기</h5>
				<h5>합격자소서</h5>
				<h5>포트폴리오</h5>
				<h5>직무분석</h5>
			</div>
			<div class="col-content">
				<div class="sub_tab_panel">
					<div class="sub-tab-con">
						<table width="100%" cellspacing="0" cellpadding="0" border="0"
							class="sub-tab-type01">
							<tbody>
								<tr>
									<td style="padding: 10px 12px;">
										<!-- 결과내검색 시작 -->
			
										<table width="100%" cellspacing="1" cellpadding="0" border="0">
											<tbody>
												<tr>
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
												<tr><td height="1" background="http://www.saraminimage.co.kr/recruit/new/s_bg_06.gif" colspan="3"></td></tr>
												<tr>
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
												<tr><td height="1" background="http://www.saraminimage.co.kr/recruit/new/s_bg_06.gif" colspan="3"></td></tr>
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
														<input type="text" size="10" id="deadline" name="deadline" value="달력js 넣기"/>
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
														<a href="javascript:resetCheck(document.srchForm);">
														<img width="84" height="17" border="0" src="http://www.saraminimage.co.kr/alba/button/btn_reset.gif">
														</a></td>
												</tr>
												<tr>
													<td height="31" align="center" colspan="3"><img
														width="186" height="35" border="0"
														onclick="return check(document.srchForm);"
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
																					선택하신 조건으로 총 <b><span class="red">387</span></b>건 검색되었습니다.
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
				<!-- 리스트 -->
				<div>
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
	
					<center><div id="page"></div></center>
				</div>
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