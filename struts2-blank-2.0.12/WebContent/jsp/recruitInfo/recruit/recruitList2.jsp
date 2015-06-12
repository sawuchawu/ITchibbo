<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>IT취뽀 - IT 취업정보 사이트</title>
<link href="/css/recruitList.css" rel="stylesheet" />
<link href="/css/button.css" rel="stylesheet" />
<script type="text/javascript" src="/js/jquery-2.0.0.js"></script>
<script type="text/javascript" src="/js/xdomainajax.js"></script>
<script type="text/javascript" src="/js/xml2json.js"></script>
<script type="text/javascript" src="/js/calcDate.js"></script>
<script type="text/javascript" src="/js/paging.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	//count는 고정, start만 바꿔준다.
	var url = "http://api.saramin.co.kr/job-search?ind_cd=301,302,304,305,306,307,308&start="+$()+"&count=10&sort=pd";
	
	// xml 파싱
	parsing(url);
	
	// 페이징
	printListPaging();
	
	
	$("button").click(function(){
		$("button").css("color","black");
		$(this).css("color","red");
		paging($(this).val());
	});
});

function parsing(urls){
		//alert($(this).val());
		
		// if 써서, 처음 로딩할땐 무조건 1페이지 보여주고, 페이징에서 페이지 숫자 클릭하면, 클릭 숫자를 파라미터로 넘겨서 페이지 뿌리기.
		
		$.ajax({
			type : "GET",
			dataType : "xml",
			url : urls,
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
					// 
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
					console.log($(this));  
				});
				//$("tbody#list").html(contentStr);
			}
		});
}

</script>
</head>
<body>
	<!-- UI Object -->
	<table class="tbl_type" border="1" cellspacing="0"
		summary="게시판의 글제목 리스트">
		<caption>게시판 리스트</caption>
		<colgroup>
			<col>
			<col width="250">
		</colgroup>
		<thead>
			<tr>
				<th scope="col">제목 |<span class="head-description"> 근무형태/연봉</span></th>
				<th scope="col">마감일</th>
			</tr>
		</thead>
		<tbody id="list">
			
		</tbody>
	</table>
	<div id="paging" align="center">
		<button value="http://api.saramin.co.kr/job-search?ind_cd=301,302,304,305,306,307,308&start=1&count=10&sort=pd">1</button>
		<button value="http://api.saramin.co.kr/job-search?ind_cd=301,302,304,305,306,307,308&start=2&count=10&sort=pd">2</button>
		<button value="http://api.saramin.co.kr/job-search?ind_cd=301,302,304,305,306,307,308&start=3&count=10&sort=pd">3</button>
		<button value="http://api.saramin.co.kr/job-search?ind_cd=301,302,304,305,306,307,308&start=4&count=10&sort=pd">4</button>
		<button value="http://api.saramin.co.kr/job-search?ind_cd=301,302,304,305,306,307,308&start=5&count=10&sort=pd">5</button>
		<button value="http://api.saramin.co.kr/job-search?ind_cd=301,302,304,305,306,307,308&start=6&count=10&sort=pd">6</button>
		<button value="http://api.saramin.co.kr/job-search?ind_cd=301,302,304,305,306,307,308&start=7&count=10&sort=pd">7</button>
		<button value="http://api.saramin.co.kr/job-search?ind_cd=301,302,304,305,306,307,308&start=8&count=10&sort=pd">8</button>
		<button value="http://api.saramin.co.kr/job-search?ind_cd=301,302,304,305,306,307,308&start=9&count=10&sort=pd">9</button>
		<button value="http://api.saramin.co.kr/job-search?ind_cd=301,302,304,305,306,307,308&start=10&count=10&sort=pd">10</button>
	</div>
	<!-- //UI Object -->
	<!-- <div align="right">
		<a class="btn_big" href="javascript:sendData()"><strong>저장</strong></a> 
		<a class="btn_big" href="#"><span>글쓰기</span></a>
	</div> -->
</body>

</html>