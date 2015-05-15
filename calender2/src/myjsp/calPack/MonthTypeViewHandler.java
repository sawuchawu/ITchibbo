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
		out.print("<style type='text/css'> a{text-decoration:none}</style><font face='�޸վƹ�ü'>");
		Calendar cal = Calendar.getInstance();
		String title_sunday_color = "#fff0f0";		//���� �Ͽ��� ����
		String title_weekday_color = "#ffefd5";		//���� ���� ����
		String title_saturday_color = "#f4ffff";	//���� ����� ����
		String null_cell_color = "#ffffff";			//���� ����
		String sunday_color = "red";				//�Ͽ��� ���� ����
		String weekday_color = "black";				//���� ���� ����
		String saturday_color = "blue";				//����� ���� ����
		String today_color = "#ff8c8c";				//���� ��¥ ����(��¥�����°�)
		String not_today_color = "#ffdcff";			//�ٸ� ��¥ ����(��¥�����°�)
		String cell_color = "#fff0f0";				//����Ʈ����ʿ� ����
		String sche_font_color = "yellow";	//���� ���� �߰�
		
		int nowYear = cal.get(Calendar.YEAR);
		int nowMonth = cal.get(Calendar.MONTH)+1;
		int nowDay = cal.get(Calendar.DATE);
		//���� ��� �κ�
		//���糯¥ ����
		int year = getYear();
		int month = getMonth();
		int day = nowDay;
		//�ش� ���� 1�Ϸ� ����
		cal.set(year, month-1, 1);
		//������ �� ���
		int endDay = cal.getActualMaximum(Calendar.DAY_OF_MONTH);
		int newLine = 0;
		String fontColor;
		String bgColor;
		int i;
		out.print("<table><tr height=20>");
		out.print("<td width='105' align='center' bgcolor='"+title_sunday_color+"'>��</td>");
		out.print("<td width='105' align='center' bgcolor='"+title_weekday_color+"'>��</td>");
		out.print("<td width='105' align='center' bgcolor='"+title_weekday_color+"'>ȭ</td>");
		out.print("<td width='105' align='center' bgcolor='"+title_weekday_color+"'>��</td>");
		out.print("<td width='105' align='center' bgcolor='"+title_weekday_color+"'>��</td>");
		out.print("<td width='105' align='center' bgcolor='"+title_weekday_color+"'>��</td>");
		out.print("<td width='105' align='center' bgcolor='"+title_saturday_color+"'>��</td>");
		out.print("</tr></table><table>");
		out.print("<tr height='20'>");
		//�ش���ϱ��� ���� �̵�
		for(i=1; i<cal.get(Calendar.DAY_OF_WEEK); i++){
			out.println("<td colspan='2' bgcolor='"+null_cell_color+"'>&nbsp;</td>");	//����
			newLine++;
		}
		//�������� ä��� ����
		for(i=1; i<= endDay; i++){
			//�Ͽ����̸� ���� ������̸� �Ķ� �ƴϸ� ����(���ڻ�)
			fontColor = (newLine ==0)? sunday_color : (newLine ==6)? saturday_color : weekday_color;
			//�޷¿� ������ ǥ��
			if(nowYear == year && nowMonth == month && nowDay ==i){
				out.print("<td width='80' align='center'><input type='image' width='70' height='20' src='image/today.jpg'></td>");
				bgColor = today_color;		//���� ��¥ ����
			}else{
				out.print("<td width='80'> </td>");
				bgColor = not_today_color;		//�Ϲ� ����
			}
			//��¥ ���(Ŭ�� �����ϵ���)
			out.print("<td onclick=window.location='calendar_sche_insert.jsp?year="+year+"&month="+month+"&day="+ i +"'   style = 'cursor: pointer' width='20' height='10' valign='top' align='center' bgColor='" + bgColor + "'><font color='" + fontColor + "'>" + i + "</font></td>");
			//���� üũ ������Ʈ
			newLine++;
			System.out.print(i+" ");
			//������ ��(�����)���� ���� ���� �ٿ� �����ٸ���Ʈ�� ������ ������ ����
			if(newLine == 7 && i!= endDay){
				out.println("</tr><tr height='70'>");
				for(int j=i-6; j!=i+1; j++){
					//�����ۼ� ��(Ŭ�� �����ϵ���)
					if(j>0){
						System.out.print("("+j+")");
						out.print("<td bgcolor='"+cell_color+"' colspan='2' width='100' height='70' valign='top'>");
						nDate = new Date(year-1900,month-1,j);
						for(Schedule schedule : datas){
							System.out.println("f");
							if( (nDate.compareTo(schedule.getsDate()) > -1) && (nDate.compareTo(schedule.geteDate()) < 1)){
								System.out.println(schedule.getType());
								if(schedule.getType().equals("������")){
									sche_font_color = "red";	//���� ���� �߰�
								}else if(schedule.getType().equals("�����")){
									sche_font_color = "green";	//���� ���� �߰�
								}else{
									sche_font_color = "blue";	//���� ���� �߰�
								}
								out.println("<a href='calendar_sche_view.jsp?scheNum="+schedule.getScheNum()+"'><font face='HY�ٴ�L' color='"+sche_font_color+"' size='2'>"+schedule.getTitle()+"</font></a><br>");					
							}
						}
						System.out.print("!");
						out.print("</td>");
					}else
						out.print("<td colspan='2'>��</td>");
				}
				//�ٽ� ��¥�� ǥ���ϱ� ���� ���� �ٷ� �̵�
				out.println("</tr><tr height='20'>");
				//���� üũ �ʱ�ȭ
				newLine = 0;
			}
		}
		out.println("</tr><tr height='70'>");
		for(int j=i-newLine; j!=i; j++){
			//���⵵ ������ �۾� �ְ�(����Ʈ)
			if(j<=endDay){
				out.print("<td bgcolor='"+cell_color+"' colspan='2' width='100' height='70' valign='top'>");
				nDate = new Date(year-1900,month-1,j);
//				System.out.println(nDate);
				for(Schedule schedule : datas) {
					if( (nDate.compareTo(schedule.getsDate()) > -1) && (nDate.compareTo(schedule.geteDate()) < 1)){
						System.out.println(schedule.getType());
						if(schedule.getType().equals("������")){
							sche_font_color = "red";	//���� ���� �߰�
						}else if(schedule.getType().equals("�����")){
							sche_font_color = "green";	//���� ���� �߰�
						}else{
							sche_font_color = "blue";	//���� ���� �߰�
						}
						out.println("<a href='calendar_sche_view.jsp?scheNum="+schedule.getScheNum()+"'><font face='HY�ٴ�L' color='"+sche_font_color+"' size='2'>"+schedule.getTitle()+"</font></a><br>");
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
