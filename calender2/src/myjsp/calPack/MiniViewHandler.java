package myjsp.calPack;
import java.util.Calendar;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.SimpleTagSupport;

import java.io.IOException;

public class MiniViewHandler extends SimpleTagSupport {
	Calendar cal = Calendar.getInstance();
	private int year;
	private int month;
	
	public void doTag() throws IOException, JspException{
		JspWriter out = getJspContext().getOut();
		int nowYear = cal.get(Calendar.YEAR);
		int nowMonth = cal.get(Calendar.MONTH)+1;
		int nowDay = cal.get(Calendar.DATE);
		int fyear;
		int fmonth;
		if(getYear() == 0){
			fyear = 2012;
			fmonth = 6;
		}
		else{
			fyear = getYear();
			fmonth = getMonth();
		}
		//out.println("<H2>"+getYear()+"년"+getMonth()+"월</H2>");
		int year = nowYear;
		int month = nowMonth;
		int day = nowDay;
		
			year = fyear;
			month = fmonth;
		cal.set(year, month-1, 1);
		year = cal.get(Calendar.YEAR);
		month = cal.get(Calendar.MONTH)+1;
		int endDay = cal.getActualMaximum(Calendar.DAY_OF_MONTH);
		int week = cal.get(Calendar.DAY_OF_WEEK);
		
		int newLine = 0;
		out.print("<font face='휴먼아미체'><table><tr height=20><td align='center' bgcolor='#828282'>일</td><td align='center' bgcolor='#828282'>월</td><td align='center' bgcolor='#828282'>화</td><td align='center' bgcolor='#828282'>수</td><td align='center' bgcolor='#828282'>목</td><td align='center' bgcolor='#828282'>금</td><td align='center' bgcolor='#828282'>토</td></tr>");
		//out.print("<tr height='5' bgcolor='red'><td></td></tr>");
		out.print("<tr height='20'>");
		for(int i=1; i<week; i++){
			out.println("<td bgcolor='#e6e4e6'>&nbsp;</td>");	//공백
			newLine++;
		}
		String fontColor;
		String bgColor;
		int i;
		for(i=1; i<= endDay; i++){
			fontColor = (newLine ==0)? "red" : (newLine ==6)? "blue" : "black";
			bgColor = (nowYear == year && nowMonth == month && nowDay ==i)? "#ffb400" : "#e6e4e6";
			out.print("<td onclick=window.location='calendar_view.jsp?year="+year+"&month="+month+ "' style = 'cursor: pointer' width='20' height='10' valign='top' align='center' bgColor='" + bgColor + "'><font color='" + fontColor + "'>" + i + "</font></td>");
			newLine++;
			if(newLine == 7 && i!= endDay){
				out.println("</tr><tr height='20'>");
				newLine = 0;
			}
		}
		while(newLine > 0 && newLine < 7){
			out.println("<td bgcolor='#e6e4e6'>&nbsp;</td>");
			newLine++;
		}
		out.println("</tr></table>");
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

}
