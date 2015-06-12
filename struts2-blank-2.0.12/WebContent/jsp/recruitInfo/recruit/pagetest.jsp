<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script type="text/javascript" src="/js/jquery-2.0.0.js"></script>
<script type="text/javascript">
 $(document).ready(function(){
	
 });
 	function getBlockStartPage(block, blockSize) {
	    var startPageNum = parseInt((block - 1) / blockSize) * blockSize + 1;
	    return startPageNum;
	}

	function getTotalPageCount(totalCount, pageSize) {
	    var pageCount = 0;
	    pageCount = totalCount / pageSize;
	    pageCount = parseInt(pageCount);
	    if ((pageCount * pageSize) < totalCount) {
	        pageCount++;
	    }
	    return pageCount;
	}

	//페이징
	function printListPaging() {
	    var args = printListPaging.arguments;
	    var i = -1;
	    var pagingBufferString = "";
	    var PAGE_BLOCK_SIZE = 10;

	    // 데이터 건수
	    var totalCount = 130;
	    // 페이지 사이즈
	    var pageSize = 10;
	    // 총 페이지 개수
	    var totalPage = 10;
	    // 현재 페이지
	    var currentPage = 5;
	    // URL
	    var gotoUrl = "";
	    // QueryString
	    var queryString = "";

	    if (args.length > ++i) totalCount = args[i];
	    if (args.length > ++i) pageSize = args[i];
	    if (args.length > ++i) currentPage = args[i];
	    if (args.length > ++i) queryString = args[i];
	    if (args.length > ++i) gotoUrl = args[i];

	    if (queryString == "") {
	        queryString = gotoUrl + "?currentPageNumber=";
	    }
	    else {
	        queryString = gotoUrl + "?" + queryString + "&currentPageNumber=";
	    }

	    // 총 페이지 수를 계산한다.
	    totalPage = getTotalPageCount(totalCount, pageSize);

	    // 페이징 디자인 처리
	    if (totalPage > 0) {
	        // 해당 페이지가 속한 페이지 블럭 설정
	        var startPageNum = getBlockStartPage(currentPage, PAGE_BLOCK_SIZE);

	        // 페이지 출력
	        for (var i = startPageNum; i <= totalPage; i++) {
	            if (i == (startPageNum + PAGE_BLOCK_SIZE)) {
	                break;
	            }

	            if (currentPage == (i)) {
	                pagingBufferString += "<a><span class='number_text2' style='margin-right:0.2em;'>" + (i) + "</span></a>";
	            }
	            else {
	                pagingBufferString += "<a href='" + queryString + i + "'>" + (i) + "</a> ";
	            }
	        }
	        pagingBufferString = "<span class='number_text1' style='line-height:1.7em;'>" + pagingBufferString + "</span>";

	        // 이전 페이지 설정
	        if (currentPage > 1) {
	            var prevStartPageNum = currentPage - 1;
	            var prevImage = "<img src='http://img.totorosa.com/rosa/request_board/request_number_btn2.gif' alt='이전' title='이전' onMouseOver=\"this.src='http://img.totorosa.com/rosa/request_board/request_number_btn2_over.gif'\" onMouseOut=\"this.src='http://img.totorosa.com/rosa/request_board/request_number_btn2.gif'\"/>";
	            pagingBufferString = "<a href='" + queryString + prevStartPageNum + "'>" + prevImage + "</a> " + pagingBufferString;
	        }
	        else {            
	            var prevImage = "<img src='http://img.totorosa.com/rosa/request_board/request_number_btn2.gif' alt='이전' title='이전' onMouseOver=\"this.src='http://img.totorosa.com/rosa/request_board/request_number_btn2_over.gif'\" onMouseOut=\"this.src='http://img.totorosa.com/rosa/request_board/request_number_btn2.gif'\"/>";
	            pagingBufferString = "<a href='javascript:alert(\"이전 페이지는 존재하지 않습니다.\");'>" + prevImage + "</a> " + pagingBufferString;
	        }

	        // 다음 페이지 설정
	        if (currentPage < totalPage) {
	            var nextStartPageNum = currentPage + 1;
	            var nextImage = "<img src='http://img.totorosa.com/rosa/request_board/request_number_btn3.gif' alt='다음' title='다음' onMouseOver=\"this.src='http://img.totorosa.com/rosa/request_board/request_number_btn3_over.gif'\" onMouseOut=\"this.src='http://img.totorosa.com/rosa/request_board/request_number_btn3.gif'\"/>";
	            pagingBufferString += "<a href='" + queryString + nextStartPageNum + "' style='margin-right:5px;'>" + nextImage + "</a>";
	        }
	        else {
	            var nextImage = "<img src='http://img.totorosa.com/rosa/request_board/request_number_btn3.gif' alt='다음' title='다음' onMouseOver=\"this.src='http://img.totorosa.com/rosa/request_board/request_number_btn3_over.gif'\" onMouseOut=\"this.src='http://img.totorosa.com/rosa/request_board/request_number_btn3.gif'\"/>";
	            pagingBufferString += "<a href='javascript:alert(\"다음 페이지는 존재하지 않습니다.\");' style='margin-right:5px;'>" + nextImage + "</a>";            
	        }
	        
	        // 이전 10 페이지 설정        
	        if (startPageNum > PAGE_BLOCK_SIZE) {
	            var prevStartPageNum10 = startPageNum - PAGE_BLOCK_SIZE;
	            var prev10Image = "<img src='http://img.totorosa.com/rosa/request_board/request_number_btn1.gif' alt='이전+10' title='이전+10' onMouseOver=\"this.src='http://img.totorosa.com/rosa/request_board/request_number_btn1_over.gif'\" onMouseOut=\"this.src='http://img.totorosa.com/rosa/request_board/request_number_btn1.gif'\"/>";
	            pagingBufferString = "<a href='" + queryString + prevStartPageNum10 + "'>" + prev10Image + "</a> " + pagingBufferString;
	        }
	        

	        // 다음 10 페이지 설정        
	        if ((startPageNum + 9) < totalPage) {
	            var nextStartPageNum10 = startPageNum + 10;
	            var next10Image = "<img src='http://img.totorosa.com/rosa/request_board/request_number_btn4.gif' alt='다음-10' title='다음-10' onMouseOver=\"this.src='http://img.totorosa.com/rosa/request_board/request_number_btn4_over.gif'\" onMouseOut=\"this.src='http://img.totorosa.com/rosa/request_board/request_number_btn4.gif'\"/>";
	            pagingBufferString += "<a href='" + queryString + nextStartPageNum10 + "'>" + next10Image + "</a>";
	        }
	        

	        //처음
	        
	        if (currentPage > 1) {
	            var firstPageNum = 1;
	            pagingBufferString = "<a href='" + queryString + firstPageNum + "'>처음</a>" + pagingBufferString;
	        }
	        

	        //끝
	        
	        if (currentPage < totalPage) {
	            var endPageNum = totalPage;
	            pagingBufferString += "<a href='" + queryString + endPageNum + "'>끝</a>";
	        }
	        
	    }
	   // document.write(pagingBufferString);
	   $("div#page").html(pagingBufferString);
	}
</script>
</head>
<body>
	<input type="button" onclick="printListPaging()">
	<div id="page"></div>

</body>
</html>