<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>IT취뽀 - 나의 캘린더</title>

<link href='/css/fullcalendar.css' rel='stylesheet' />
<link href='/css/fullcalendar.print.css' rel='stylesheet' media='print' />
<script type="text/javascript" src="/js/jquery-2.0.0.js"></script>
<script src='/js/moment.min.js'></script>
<!-- <script src='/js/jquery.min.js'></script> -->
<script src='/js/fullcalendar.min.js'></script>
<script src='/js/ko.js'></script>
<script type="text/javascript" src="/js/xdomainajax.js"></script>
<script type="text/javascript" src="/js/xml2json.js"></script>
<script type="text/javascript" src="/js/parsing.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	$('#calendar').fullCalendar({
		header: {
			left: 'prev,next today',
			//center: 'title',
			right: 'month,basicWeek,basicDay'
		},
		lang: 'ko',
		defaultView: 'basicWeek',
		defaultDate: new Date(),
		editable: true,
		//contentHeight: 'auto',
		height: 190,
		eventLimit: true, // allow "more" link when too many events
		eventColor: '#68A4C4',
		events: function(start, end, timezone, callback) {
			$.ajax({
				type : "GET",
				dataType : "xml",
				async: false,
				url : "http://api.saramin.co.kr/job-search?ind_cd=301,302,304,305,306,307,308&count=10&sort=pd",
				success : function(xml) {
					var xmlDoc = $.parseXML(xml.responseText);
					var xmlData = $(xmlDoc).find("job");
					var listLength = xmlData.length;
					var textXML = xml.responseText; 				// xml을 text 형식으로 가져온다.
					var dataJson = $.xml2json(textXML); 			// xml 파싱하여 가져온 text를 json형태로 바꿔준다.
					var data = dataJson.body.job_search.jobs.job; 	// job 까지의 위치 
					var events=[];
					console.log(data)
					$(data).each(function(i) {
						var title = data[i].position.job_category.text; 	// 제목 : 직무 + "채용" (임시방편->제목 파싱 가능하면 바꿀것)
						var expiration = data[i].expiration_timestamp; 		// 마감일
						var opening = data[i].opening_timestamp;				// 시작일
						var rID = data[i].id;	
						
						/* 마감일 계산 */
						var expDate = new Date(expiration*1000);		// 유닉스 timeStamp를 날짜형으로 변환
						var epYear = expDate.getFullYear();
						var epMonth = expDate.getMonth()+1;
						var epDate = expDate.getDate();
						var calFinshDate = epYear +"-"+ epMonth +"-"+ epDate;
						/* 시작일 계산 */
						var openDate = new Date(opening*1000);
						var openYear = openDate.getFullYear();
						var openMonth = openDate.getMonth()+1;
						var openDate = openDate.getDate();
						var calStartDate = openYear +"-"+ openMonth +"-"+ openDate;
						
						events.push({
							id: rID,
							title: title,
							start: calStartDate,
							end: calFinshDate
						});				
					});
					callback(events);
				}
			});
		},
		eventClick: function(event) {
	        $(this).css('border-color', 'orange');
		    var url = "http://www.saramin.co.kr/zf_user/recruit/recruit-view/idx/"+event.id+"#utm_source=job-search-api"
	        window.open(url);
	    }
	});
});

</script>
<style>

/* #bodyCalendar {
	margin: 40px 10px;
	padding: 0;
	font-family: "Lucida Grande",Helvetica,Arial,Verdana,sans-serif;
	font-size: 14px;
}*/

#calendar {
	font-family: 나눔고딕;
	font-size: 13px;
} 

</style>
</head>
<body>
<div id="bodyCalendar">
<div id='calendar'></div>
</div>

</body>
</html>
