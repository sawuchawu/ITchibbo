var urlStr="http://api.saramin.co.kr/job-search?ind_cd=301,302,304,305,306,307,308&count=10&sort=pd";
function setUrl(val){
	urlStr = val;
}

function getUrl(){
	return urlStr;
}

function searchUrl() {
	var ind_cd = new Array();
	var ind_cd_chk = 0;
	var job_category = new Array();
	var job_category_chk = 0;
	var loc_cd = new Array();
	var loc_cd_chk = 0;
	var edu_lv;
	var job_type = new Array();
	var job_type_chk = 0;
	var deadline = $("input#date").val();
	var keywords = $("input#keywords").val();
	
	$("input:checkbox[name='ind_cd']:checked").each(function() {
		ind_cd.push($(this).val());
	});
	
	$("input:checkbox[name='job_category']:checked").each(function() {
		job_category.push($(this).val());
	});
	
	$("input:checkbox[name='loc_cd']:checked").each(function() {
		loc_cd.push($(this).val());
	});
	
	$("input:radio[name='edu_lv']:checked").each(function() {
		edu_lv = $(this).val();
		
	});
	
	$("input:checkbox[name='job_type']:checked").each(function() {
		job_type.push($(this).val());
	});
	
	var url = "http://api.saramin.co.kr/job-search?sort=pd&count=10";

	if(ind_cd!=''){
		url += "&ind_cd="+ind_cd;
	}
	if(job_category!=''){
		url += "&job_category="+job_category;
	}
	if(loc_cd!=''){
		url += "&loc_cd="+loc_cd;
	}
	if(edu_lv!=undefined){
		url += "&edu_lv="+edu_lv;
	}
	if(job_type!=''){
		url += "&job_type="+job_type;
	}
	if(deadline!=''){
		url += "&deadline="+deadline;
	}
	if(keywords!=''){
		url += "&keywords="+keywords;
	}
	
	console.log(url);
	setUrl(url);
	parsing(0);
}

function jobSearchUrl(val){
	url = "http://api.saramin.co.kr/job-search?sort=pd&count=10&job_category="+val;
	setUrl(url);
	parsing(0);
}

function parsing(i){
	var url = getUrl()+"&start="+i;
		console.log(url);
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
			var total = dataJson.body.job_search.jobs.total;// 총 게시글 개수
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
							 "<td class='title'><a href='javascript:infoPgae("+rId+")'><b>"+
				        		 title +" 채용</b><br>"+
							     "<span class='head-description'>"+ job_type +"/"+ salary +"</span></a>"+
							  "</td>" +
							  "<td>" + epMonth + "/" + epDate + "("+ epDay +")</br>D"+ dDay +"</td>"+
							  "</tr>";
			});
			
			if(total==0){
				contentStr = "<tr><td class='title' colspan='2' height='250' style='text-align:center;'><span class='head-description'><h4><b>검색결과가 없습니다.</h4></b></span></td></tr>";
			}
			
			//console.log(dataJson.body);
			
			$("tbody#list").html(contentStr);
			$("span#count").text(total);
			printListPaging(i, total);
		}
	});
}

function jobParsing(val){
	
	$.ajax({
		type : "GET",
		dataType : "xml",
		async: false,
		url : "http://api.saramin.co.kr/job-search?job_category="+val,
		success : function(xml) {
			var xmlDoc = $.parseXML(xml.responseText);
			var xmlData = $(xmlDoc).find("job");
			var listLength = xmlData.length;
			var textXML = xml.responseText; 				// xml을 text 형식으로 가져온다.
			var dataJson = $.xml2json(textXML); 			// xml 파싱하여 가져온 text를 json형태로 바꿔준다.
			var total = dataJson.body.job_search.jobs.total; // 총 게시글 개수
			
			if(val==401)	$("span#j1").text(" ("+total+")");	 
			if(val==402)	$("span#j2").text(" ("+total+")");
			if(val==403)	$("span#j3").text(" ("+total+")");
			if(val==404)	$("span#j4").text(" ("+total+")");
			if(val==406)	$("span#j6").text(" ("+total+")");
			if(val==407)	$("span#j7").text(" ("+total+")");
			if(val==408)	$("span#j8").text(" ("+total+")");
			if(val==409)	$("span#j9").text(" ("+total+")");
			if(val==410)	$("span#j10").text(" ("+total+")");
			if(val==411)	$("span#j11").text(" ("+total+")");
			if(val==412)	$("span#j12").text(" ("+total+")");
			if(val==413)	$("span#j13").text(" ("+total+")");
			if(val==414)	$("span#j14").text(" ("+total+")");
			if(val==415)	$("span#j15").text(" ("+total+")");
			if(val==416)	$("span#j16").text(" ("+total+")");
			if(val==405)	$("span#j5").text(" ("+total+")");
		}

	});
	
	
}

function infoPgae(rId){
	$("div#sub_tab_panel").hide();
	$("div#rList").hide();
	$("div#page").hide();
	$("div#recInfo").show(1500);
	$('html, body').animate({scrollTop: 0}, 1000);
	
	$.ajax({
		type : "GET",
		dataType : "xml",
		async: false,
		url : "http://api.saramin.co.kr/job-search?id="+rId,
		success : function(xml) {
			var xmlDoc = $.parseXML(xml.responseText);
			var xmlData = $(xmlDoc).find("job");
			var listLength = xmlData.length;
			var textXML = xml.responseText; 				// xml을 text 형식으로 가져온다.
			var dataJson = $.xml2json(textXML); 			// xml 파싱하여 가져온 text를 json형태로 바꿔준다.
			var data = dataJson.body.job_search.jobs.job; 	// job 까지의 위치 
			
			var title = data.position.job_category.text; 	// 제목 : 직무 + "채용" (임시방편->제목 파싱 가능하면 바꿀것)
			var job_type = data.position.job_type.text; 	// 근무형태
			var salary = data.salary.text; 					// 연봉
			var expiration = data.expiration_timestamp; 	// 마감일
			var expDate = new Date(expiration*1000);		// 유닉스 timeStamp를 날짜형으로 변환
			var epMonth = expDate.getMonth()+1;
			var epDate = expDate.getDate();
			var epDay = getWeekday(expDate.getDay());
			var dDay = getDday(expDate);
			var deadLine = epMonth + "/" + epDate +" "+ epDay +" (D"+ dDay +")";	//마감일 표시
			var ind_cd = data.position.industry.text	;//업종
			var job_category = data.position.job_category.text;		//직무
			var experience_level = data.position.experience_level.text; //경력
			var edu_lv = data.position.required_education_level.text;//학력
			
			$("span#title").text("["+title+"] " + " 채용 공고");
			$("td#deadline").text(deadLine);
			$("td#ind_cd").text(ind_cd);
			$("td#job_category").text(job_category);
			$("td#job_type").text(job_type);
			$("td#experience_level").text(experience_level);
			$("td#edu_lv").text(edu_lv);
			$("td#salary").text(salary);
			$("#info").attr("onclick", "window.open('"+data.url+"', '"+ title+" 채용공고');");
			
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