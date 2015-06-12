$(document).ready(function() {
		$.ajax({
			type : "GET",
			dataType : "xml",
			url : "http://api.saramin.co.kr/job-search?ind_cd=301,302,304,305,306,307,308&start=1&count=10&sort=pd",
			success : function(xml) {
				var xmlDoc = $.parseXML(xml.responseText);
				var xmlData = $(xmlDoc).find("job");
				var listLength = xmlData.length;
				var textXML = xml.responseText; 				// xml을 text 형식으로 가져온다.
				var dataJson = $.xml2json(textXML); 			// xml 파싱하여 가져온 text를 json형태로 바꿔준다.
				var data = dataJson.body.job_search.jobs.job; 	// job 까지의 위치 
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
					
					// <a href="/expo/dataInfo.action?exp_no=${i.exp_no}&job=info">${i.exp_title}</a> -> info 페이지 링크
					contentStr +="<tr>"+ 
								 "<td class='title'><b>"+
					        		 title +" 채용</b><br>"+
								     "<span class='head-description'>"+ job_type +"/"+ salary +"</span>"+
								  "</td>" +
								  "<td>" + epMonth + "/" + epDate + "("+ epDay +")</br>D"+ dDay +"</td>"+
								  "</tr>";
									
				});
				$("tbody#list").html(contentStr);
			}
		});
	});
	
	// D-day 구하기
	function getDday(expDate){
		var gap = new Date().getTime() - expDate.getTime();
		var dDay = Math.floor(gap / (1000 * 60 * 60 * 24));
		
		return dDay;
	}

	// 요일 구하기 
	function getWeekday(epDay) {
	    var weekday=new Array(7);
	    
	    weekday[0]="일";
	    weekday[1]="월";
	    weekday[2]="화";
	    weekday[3]="수";
	    weekday[4]="목";
	    weekday[5]="금";
	    weekday[6]="토";

	    return weekday[epDay];
	}