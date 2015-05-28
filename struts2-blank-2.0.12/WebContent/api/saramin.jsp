<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR;">
<title>Insert title here</title>
<script type="text/javascript" src="/js/jquery-2.0.0.js"></script>
<script type="text/javascript" src="/js/xdomainajax.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	 $("input[type=submit]").click(function(){
        $.ajax({
           type: "GET"
           ,dataType: "xml"
           ,url: $(resultURL).val()
           ,success: function(xml){
           	var xmlDoc=$.parseXML(xml.responseText);
           	
                var xmlData = $(xmlDoc).find("job");
                var listLength = xmlData.length;
                
                    var contentStr = "";
                    $(xmlData).each(function(){
                        contentStr += "채용공고번호: "+$(this).find("id").text()+
                        			   "채용공고표준 url: "+$(this).find("url").text()+
                        			   "공고 진행 여부(1: 진행중, 0: 마감): "+$(this).find("active").text()+"<br>";
                    });
                    $("results").append(contentStr);
	                 console.log(xmlData); 
	             /* var textXML = xml.responseText; 	// xml을 text 형식으로 가져온다.
	             var data = $.xml2json(textXML);	// xml 파싱하여 가져온 text를 json형태로 바꿔준다.
	             
	             console.log(data.jobs.length); */
	             
	             
             
                
            }
         }); 
         //alert($(resultURL).val());
    });
}); 
</script>
<script type="text/javascript" src="/script/httpRequest.js"></script>
<script type="text/javascript">
	function search_query() {
		var keywords = document.getElementById("keywords").value;
		var published = document.getElementById("published").value;
		var deadline = document.getElementById("deadline").value;
		var ind_cd = document.getElementById("ind_cd").value;
		var job_category = document.getElementById("job_category").value;
		var job_type_obj = document.getElementsByName("job_type");
		var edu_lv_obj = document.getElementsByName("edu_lv");
		var sort = document.getElementById("sort").value;
		var count = document.getElementById("count").value;
		
		var job_type, edu_lv;
		var job_type_chk=0;
		var edu_lv_chk=0;
		
		for(var i=0; i<job_type_obj.length; i++){
			if(job_type_obj[i].checked){
				job_type=job_type_obj[i].value;
				job_type_chk=1;
			} 
		}
		
		for(var i=0; i<edu_lv_obj.length; i++){
			if(edu_lv_obj[i].checked){
				edu_lv=edu_lv_obj[i].value;
				edu_lv_chk=1;
			} 
		}
		
		//var url = "http://api.saramin.co.kr/job-search?loc_cd=3";
		var url = "http://api.saramin.co.kr/job-search?";

		if(keywords!=''){
			url += "keywords="+keywords;
		}
		if(published!=''){
			url += "&published="+published;
		}
		if(deadline!=''){
			url += "&deadline="+deadline;
		}
		if(ind_cd!=''){
			url += "&ind_cd="+ind_cd;
		}
		if(job_category!=''){
			url += "&job_category="+job_category;
		}
		if(job_type_chk==1){
			url += "&job_type="+job_type;
		}
		if(edu_lv_chk==1){
			url += "&edu_lv="+edu_lv;
		}
		if(sort!=''){
			url += "&sort="+sort;
		}
		if(count!=''){
			url += "&count="+count;
		}
		
		console.log(url);
		//saraminParse(url);
		document.getElementById("resultURL").value=url;
	}
	
	function saraminParse(url){
		sendRequest(url, null, view, 'GET');		
	}
	
	function view(){
		if(httpRequest.readyState==4 && httpRequest.status==200){
			console.log(httpRequest.responseXML);
			//printInfo();
		}
	}
	
</script>
</head>
<body>
	<form id="search_form" action="javascript:search_query();"
		method="post">
		키워드:&nbsp;<input type="text" size="10" id="keywords" name="keywords" /><br><br>
		등록일:&nbsp;<input type="text" size="10" id="published" name="published" /><br><br>
		마감일:&nbsp;<input type="text" size="10" id="deadline" name="deadline" /> <br><br>
		업종:&nbsp;
		<select name="ind_cd" id="ind_cd">
			<option value=""></option>
			<option value="301" >솔루션·SI·ERP·CRM</option>
			<option value="302">웹에이젼시</option>
			<option value="304">쇼핑몰·오픈마켓</option>
			<option value="305">포털·인터넷·컨텐츠</option>
			<option value="306">네트워크·통신·모바일</option>
			<option value="307">하드웨어·장비</option>
			<option value="308">정보보안·백신</option>
			<option value="313">IT컨설팅</option>
			<option value="314">게임</option>
		</select> <br><br>
		직무:&nbsp;
		<select	name="job_category" id="job_category">
			<option value=""></option>
			<option value="401">웹마스터·QA·테스터</option>
			<option value="402">서버·네트워크·보안</option>
			<option value="403">웹기획·웹마케팅·PM</option>
			<option value="404">웹프로그래머</option>
			<option value="405">게임·Game</option>
			<option value="406">컨텐츠·사이트운영</option>
			<option value="407">응용프로그래머</option>
			<option value="408">시스템프로그래머</option>
			<option value="409">ERP·시스템분석·설계</option>
			<option value="410">통신·모바일</option>
			<option value="411">하드웨어·소프트웨어</option>
			<option value="412"> 웹디자인</option>
			<option value="413">HTML·웹표준·UI개발</option>
			<option value="414">동영상·편집·코덱</option>
			<option value="415">IT·디자인·컴퓨터교육</option>
			<option value="416">데이터베이스·DBA</option>
		</select> <br><br>
		근무형태:<br>
		<input type="radio" name="job_type"  value="0">모두 표시
		<input type="radio" name="job_type"  value="1">정규직
		<input type="radio" name="job_type"  value="2">계약직
		<input type="radio" name="job_type"  value="3">병역특례
		<input type="radio" name="job_type"  value="4">인턴직
		<input type="radio" name="job_type"  value="5">시간제/일용직
		<input type="radio" name="job_type"  value="6">파견직
		<input type="radio" name="job_type"  value="7">해외취업
		<input type="radio" name="job_type"  value="8">위촉직<br>
		<input type="radio" name="job_type"  value="9">프리랜서
		<input type="radio" name="job_type"  value="10">계약직 (정규직 전환가능)
		<input type="radio" name="job_type"  value="11">인턴직 (정규직 전환가능)
		<input type="radio" name="job_type"  value="12">연수생 (교육생)
		<input type="radio" name="job_type"  value="13">별정직
		<input type="radio" name="job_type"  value="14">파트
		<input type="radio" name="job_type"  value="15">전임<br><br>
		학력:&nbsp;
		<input type="radio" name="edu_lv" value="">모두 표시
		<input type="radio" name="edu_lv" value="1">고등학교 졸업
		<input type="radio" name="edu_lv" value="2">대학(2,3년) 졸업
		<input type="radio" name="edu_lv" value="3">대학교(4년) 졸업
		<input type="radio" name="edu_lv" value="4">석사졸업
		<input type="radio" name="edu_lv" value="5">박사졸업
		<input type="radio" name="edu_lv" value="99">학력무관<br><br>
		정렬방법:&nbsp;
		<select	name="sort" id="sort">
			<option value=""></option>
			<option value="pd" >게시일 역순(기본값)</option>
			<option value="pa" >게시일순</option>
			<option value="ud" >최근수정순</option>
			<option value="ua" >수정일 정순</option>
			<option value="da" >마감일 정순</option>
			<option value="dd" >마감일 역순</option>
			<option value="rc" >조회수 역순</option>
			<option value="ac" >지원자수 역순</option>
			<option value="re" >답변수 역순</option>
		</select> <br><br>
		
		카운트(1~110): &nbsp;<input type="text" size="10" id="count" name="count" /> <br><br>
		<input type="submit">
	</form>
	<input type="text" id="resultURL" value="">
	<div id="results"></div>
</body>
</html>