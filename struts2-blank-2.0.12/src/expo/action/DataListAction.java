package expo.action;

import java.util.HashMap;
import java.util.List;

import com.opensymphony.xwork2.Action;

import expo.bean.ExpoBean;
import expo.dao.ExpoDao;

public class DataListAction implements Action{
 private List<ExpoBean>list;
 private int currentPage=1;
 private StringBuffer sb=new StringBuffer();
 
	public int getCurrentPage() {
	return currentPage;
}

public void setCurrentPage(int currentPage) {
	this.currentPage = currentPage;
}

public StringBuffer getSb() {
	return sb;
}

public void setSb(StringBuffer sb) {
	this.sb = sb;
}

	public List<ExpoBean> getList() {
	return list;
}

public void setList(List<ExpoBean> list) {
	this.list = list;
}
public void paging(){	
	try{		 
	   //paging
	   int pageScale=4;//tuple or page NumberCount
	   int totalRow=0;		  
	   totalRow=ExpoDao.getTotalRow();
	   
	   int totalPage=totalRow%pageScale==0?(totalRow/pageScale):(totalRow/pageScale)+1;
	   if(totalRow==0)totalPage=1;	   
	    
	   int start=1+(currentPage-1)*pageScale;
	   int end=pageScale+(currentPage-1)*pageScale;
	   
	   int block=(currentPage%pageScale)==0?
			   currentPage/pageScale:(currentPage/pageScale)+1;
	   int startPage=1+(block-1)*pageScale;
	   int endPage=pageScale+(block-1)*pageScale;
	   if(endPage>=totalPage){
		   endPage=totalPage;
	   } 
	   HashMap<Object, Object>map=new HashMap<Object, Object>();
	   map.put("start", start);
	   map.put("end", end);		   
	   
	   list=ExpoDao.selectExpo(map);
	  

		
		
		   
	   sb.append("<a href='/expo/expoList.action?currentPage=1'><img src='/img/button/btn_prev.gif'/></a> &nbsp;&nbsp;&nbsp;");
	   if(block>1){
	   sb.append("<a href='/expo/expoList.action?currentPage="+(startPage-1)+"'><img src='/img/button/btn_prev.gif'/></a> &nbsp;&nbsp;&nbsp;");
	   }else{		   
	   sb.append("<a href='#'><img src='/img/button/btn_prev.gif'/></a> &nbsp;&nbsp;&nbsp;");
	   }
	   sb.append("<span>");
	   for(int i=startPage;i<=endPage;i++){
	   if(currentPage==i){
		   sb.append("<font size=4 color=red>["+i+"]</font> &nbsp;&nbsp;&nbsp;");
	   }else{
	   sb.append("<a href='/expo/expoList.action?currentPage="+i+"'>["+i+"]</a> &nbsp;&nbsp;&nbsp;");
	   }
	   }
	   sb.append("</span>");
	   if(endPage<totalPage)
	   sb.append("<a href='/expo/expoList.action?currentPage="+(endPage+1)+"'><img src='/img/button/btn_next.gif'/></a> &nbsp;&nbsp;&nbsp;");
	   else
	   sb.append("<a href='#'><img src='/img/button/btn_next.gif'/></a> &nbsp;&nbsp;&nbsp;");		   
	   sb.append("<a href='/expo/expoList.action?currentPage="+totalPage+"'><img src='/img/button/btn_last.gif'/></a>");
	   		
	   
	  
	   
	   

	}catch(Exception e){
		e.printStackTrace();
	}
}
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		paging();
		return SUCCESS;
	}
	
}
