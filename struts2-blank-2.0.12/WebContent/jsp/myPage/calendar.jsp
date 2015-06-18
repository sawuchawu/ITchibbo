<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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
<script type="text/javascript">
$(document).ready(function() {
		
	
	$('#calendar').fullCalendar({
		header: {
			left: 'prev,next today',
			center: 'title',
			right: 'month,basicWeek,basicDay'
		},
		defaultDate: '2015-06-12',
		editable: true,
		eventLimit: true, // allow "more" link when too many events
		events: [
			{
				title: '삼성전자',
				start: '2015-6-01'
			},
			{
				title: '쿠팡',
				start: '2015-06-07',
				end: '2015-06-10'
			},
			{
				id: 999,
				title: '포스코',
				start: '2015-06-09T16:00:00'
			},
			{
				id: 999,
				title: 'SK C&C',
				start: '2015-06-16T16:00:00'
			},
			{
				title: '삼성SDS',
				start: '2015-06-11',
				end: '2015-06-13'
			},
			{
				title: '현대정보통신',
				start: '2015-06-12T10:30:00',
				end: '2015-06-12T12:30:00'
			},
			{
				title: '쌍용정보통신',
				start: '2015-06-12T12:00:00'
			},
			{
				title: '티몬',
				start: '2015-06-12T14:30:00'
			},
			{
				title: '현대백화점',
				start: '2015-06-12T17:30:00'
			},
			{
				title: '가비아',
				start: '2015-06-12T20:00:00'
			},
			{
				title: 'SIST',
				start: '2015-06-13T07:00:00'
			},
			{
				title: 'Google',
				url: 'http://google.com/',
				start: '2015-06-28'
			}
		]
	});
	
});

</script>
<style>

body {
	margin: 40px 10px;
	padding: 0;
	font-family: "Lucida Grande",Helvetica,Arial,Verdana,sans-serif;
	font-size: 14px;
}

#calendar {
	max-width: 900px;
	margin: 0 auto;
}

</style>
</head>
<body>

<div id='calendar'></div>

</body>
</html>
