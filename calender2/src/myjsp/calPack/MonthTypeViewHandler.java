package myjsp.calPack;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.SimpleTagSupport;

import myjsp.schePack.ScheBean;
import myjsp.schePack.Schedule;

import java.io.IOException;

public class MonthTypeViewHandler extends SimpleTagSupport {
	private int year;
	private int month;
	private String login_id;
	Date nDate;
	ScheBean sb = new ScheBean();
	
	public void doTag() throws IOException, JspException{
		System.out.println(login_id);
		ArrayList<Schedule> datas = sb.getDBmyList(login_id);
		JspWriter out = getJspContext().getOut();
		out.print("<style type='text/css'> a{text-decoration:none}</style><font face='휴먼아미체'>");
		Calendar cal = Calendar.getInstance();
		String title_sunday_color = "#fff0f0";		//제목에 일요일 색깔
		String title_weekday_color = "#ffefd5";		//제목에 평일 색깔
		String title_saturday_color = "#f4ffff";	//제목에 토요일 색깔
		String null_cell_color = "#ffffff";			//공백 색상
		String sunday_color = "red";				//일요일 글자 색상
		String weekday_color = "black";				//평일 글자 색상
		String saturday_color = "blue";				//토요일 글자 색상
		String today_color = "#ff8c8c";				//오늘 날짜 배경색(날짜나오는곳)
		String not_today_color = "#ffdcff";			//다른 날짜 배경색(날짜나오는곳)
		String cell_color = "#fff0f0";				//리스트목록쪽에 배경색
		String sche_font_color = "yellow";	//여기 색상 추가
		
		int nowYear = cal.get(Calendar.YEAR);
		int nowMonth = cal.get(Calendar.MONTH)+1;
		int nowDay = cal.get(Calendar.DATE);
		//제목 출력 부분
		//현재날짜 지정
		int year = getYear();
		int month = getMonth();
		int day = nowDay;
		//해당 월의 1일로 설정
		cal.set(year, month-1, 1);
		//마지막 날 기억
		int endDay = cal.getActualMaximum(Calendar.DAY_OF_MONTH);
		int newLine = 0;
		String fontColor;
		String bgColor;
		int i;
		out.print("<table><tr height=20>");
		out.print("<td width='105' align='center' bgcolor='"+title_sunday_color+"'>일</td>");
		out.print("<td width='105' align='center' bgcolor='"+title_weekday_color+"'>월</td>");
		out.print("<td width='105' align='center' bgcolor='"+title_weekday_color+"'>화</td>");
		out.print("<td width='105' align='center' bgcolor='"+title_weekday_color+"'>수</td>");
		out.print("<td width='105' align='center' bgcolor='"+title_weekday_color+"'>목</td>");
		out.print("<td width='105' align='center' bgcolor='"+title_weekday_color+"'>금</td>");
		out.print("<td width='105' align='center' bgcolor='"+title_saturday_color+"'>토</td>");
		out.print("</tr></table><table>");
		out.print("<tr height='20'>");
		//해당요일까지 공백 이동
		for(i=1; i<cal.get(Calendar.DAY_OF_WEEK); i++){
			out.println("<td colspan='2' bgcolor='"+null_cell_color+"'>&nbsp;</td>");	//공백
			newLine++;
		}
		//막날까지 채우기 시작
		for(i=1; i<= endDay; i++){
			//일요일이면 빨강 토요일이면 파랑 아니면 검정(글자색)
			fontColor = (newLine ==0)? sunday_color : (newLine ==6)? saturday_color : weekday_color;
			//달력에 오늘을 표시
			if(nowYear == year && nowMonth == month && nowDay ==i){
				out.print("<td width='80' align='center'><input type='image' width='70' height='20' src='image/today.jpg'></td>");
				bgColor = today_color;		//오늘 날짜 배경색
			}else{
				out.print("<td width='80'> </td>");
				bgColor = not_today_color;		//일반 배경색
			}
			//날짜 출력(클릭 가능하도록)
			out.print("<td onclick=window.location='calendar_sche_insert.jsp?year="+year+"&month="+month+"&day="+ i +"'   style = 'cursor: pointer' width='20' height='10' valign='top' align='center' bgColor='" + bgColor + "'><font color='" + fontColor + "'>" + i + "</font></td>");
			//요일 체크 업데이트
			newLine++;
			System.out.print(i+" ");
			//한줄의 끝(토요일)까지 가면 다음 줄에 스케줄리스트를 보여줄 공백을 만듬
			if(newLine == 7 && i!= endDay){
				out.println("</tr><tr height='70'>");
				for(int j=i-6; j!=i+1; j++){
					//공백작성 중(클릭 가능하도록)
					if(j>0){
						System.out.print("("+j+")");
						out.print("<td bgcolor='"+cell_color+"' colspan='2' width='100' height='70' valign='top'>");
						nDate = new Date(year-1900,month-1,j);
						for(Schedule schedule : datas){
							System.out.println("f");
							if( (nDate.compareTo(schedule.getsDate()) > -1) && (nDate.compareTo(schedule.geteDate()) < 1)){
								System.out.println(schedule.getType());
								if(schedule.getType().equals("공휴일")){
									sche_font_color = "red";	//여기 색상 추가
								}else if(schedule.getType().equals("기념일")){
									sche_font_color = "green";	//여기 색상 추가
								}else{
									sche_font_color = "blue";	//여기 색상 추가
								}
								out.println("<a href='calendar_sche_view.jsp?scheNum="+schedule.getScheNum()+"'><font face='HY바다L' color='"+sche_font_color+"' size='2'>"+schedule.getTitle()+"</font></a><br>");					
							}
						}
						System.out.print("!");
						out.print("</td>");
					}else
						out.print("<td colspan='2'>　</td>");
				}
				//다시 날짜를 표시하기 위해 다음 줄로 이동
				out.println("</tr><tr height='20'>");
				//요일 체크 초기화
				newLine = 0;
			}
		}
		out.println("</tr><tr height='70'>");
		for(int j=i-newLine; j!=i; j++){
			//여기도 수행할 작업 넣고(리스트)
			if(j<=endDay){
				out.print("<td bgcolor='"+cell_color+"' colspan='2' width='100' height='70' valign='top'>");
				nDate = new Date(year-1900,month-1,j);
//				System.out.println(nDate);
				for(Schedule schedule : datas) {
					if( (nDate.compareTo(schedule.getsDate()) > -1) && (nDate.compareTo(schedule.geteDate()) < 1)){
						System.out.println(schedule.getType());
						if(schedule.getType().equals("공휴일")){
							sche_font_color = "red";	//여기 색상 추가
						}else if(schedule.getType().equals("기념일")){
							sche_font_color = "green";	//여기 색상 추가
						}else{
							sche_font_color = "blue";	//여기 색상 추가
						}
						out.println("<a href='calendar_sche_view.jsp?scheNum="+schedule.getScheNum()+"'><font face='HY바다L' color='"+sche_font_color+"' size='2'>"+schedule.getTitle()+"</font></a><br>");
					}
				}
				out.println("</td>");
			}
		}
		out.println("</tr></table></font>");
	}	
	public int getYear() {
		return year;
	}

	public void setYear(int year) {
		this.year = year;
	}

	public int getMonth() {
		return month;
	}

	public void setMonth(int month) {
		this.month = month;
	}
	public String getLogin_id() {
		return login_id;
	}
	public void setLogin_id(String login_id) {
		this.login_id = login_id;
	}


}
