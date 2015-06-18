<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script type="text/javascript" src="/js/jquery-2.0.0.js"></script>
<script type="text/javascript" src="/js/xdomainajax.js"></script>
<script type="text/javascript" src="/js/xml2json.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$.ajax({
			type : "GET",
			dataType : "xml",
			url : "http://api.saramin.co.kr/job-search?ind_cd=301,302,304,305,306,307,308&count=1&sort=pd",
			success : function(xml) {
				var xmlDoc = $.parseXML(xml.responseText);
				var xmlData = $(xmlDoc).find("job");
				var listLength = xmlData.length;
				var textXML = xml.responseText; 				// xml을 text 형식으로 가져온다.
				var dataJson = $.xml2json(textXML); 			// xml 파싱하여 가져온 text를 json형태로 바꿔준다.
				var jobJson = dataJson.body.job_search.jobs.job; 	// job 까지의 위치 
				
				var title = jobJson.position.job_category.text; 	// 제목 : 직무 + "채용" (임시방편->제목 파싱 가능하면 바꿀것)
				var job_type = jobJson.position.job_type.text; 		// 근무형태
				var salary = jobJson.salary.text; 					// 연봉
				var expiration = jobJson.expiration_timestamp; 		// 마감일
				var expDate = new Date(expiration*1000);			// 유닉스 timeStamp를 날짜형으로 변환
				var epMonth = expDate.getMonth()+1;
				var epDate = expDate.getDate();
				var epDay = getWeekday(expDate.getDay());
				var dDay = getDday(expDate);
				var rId = jobJson.id;	// 채용공고 id 값 넘기기
				
				var data = {"rec_id" : title , "rec_title" : job_type, "rec_job" : salary, "rec_sdate":expiration, 
						"rec_fdate":expDate};
				// 이런형식으로 필요한 데이터만 뽑아서 제이슨화시켜서 보내면 다 받는거 같다..? 
				// 그럼, 파싱한 개수만큼 배열만들어서 제이슨화 시켜서 보내야되나?>???			
				
				///////////범석이, 지은이  와르파일 유에스비에 넣기!!!!!!!!!!!!!!!!
				
				//alert(jobJson);
				console.log(jobJson);
				console.log(JSON.stringify(jobJson));
				sendJobJson(JSON.stringify(data));
			}
		});
	});
	
	function sendJobJson(jobJson){
		$.ajax({
			type : "post",
			datatype : "json",
			data : "json="+jobJson,
			url : "/recruit/recruitInsert.action",
			success : function(){
				alert(1);
			}
		});
	}

	// D-day 구하기
	function getDday(expDate) {
		var gap = new Date().getTime() - expDate.getTime();
		var dDay = Math.floor(gap / (1000 * 60 * 60 * 24));

		return dDay;
	}

	// 요일 구하기 
	function getWeekday(epDay) {
		var weekday = new Array(7);

		weekday[0] = "일";
		weekday[1] = "월";
		weekday[2] = "화";
		weekday[3] = "수";
		weekday[4] = "목";
		weekday[5] = "금";
		weekday[6] = "토";

		return weekday[epDay];
	}
</script>
</head>
<body>

</body>
</html>