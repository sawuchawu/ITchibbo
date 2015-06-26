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
<script type="text/javascript">
$(document).ready(function() {
	$('#calendar').fullCalendar({
		header: {
			left: 'prev,next today',
			center: 'title',
			right: 'month,basicWeek,basicDay'
		},
		lang: 'ko',
		defaultDate: new Date(),
		editable: true,
		eventLimit: true, // allow "more" link when too many events
		eventColor: '#68A4C4',
		events: function(start, end, timezone, callback) {
			$.ajax({
				url: "/recruit/recruitSelect.action?mId="+$("#mId").val(),
				type: "get",
				dataType: "json",
				success: function(data){
					var events=[];
					$.each(data, function(i, dom){
						events.push({
							id: dom.no,
							title: dom.title,
							start: dom.sDate,
							end: dom.fDate
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

body, #title {
	margin: 40px 10px;
	padding: 0;
	font-family: "Lucida Grande",Helvetica,Arial,Verdana,sans-serif;
	font-size: 14px;
}

#calendar, #title {
	max-width: 900px;
	margin: 0 auto;
}

</style>
</head>
<body>
<input type="hidden" value="<%=session.getAttribute("id") %>" id="mId"/>
<p id="title"><b><%=session.getAttribute("id") %></b> 님의 캘린더</p><br><br>
<div id='calendar'>
</div>

</body>
</html>
