package portfolio.action;

import java.util.HashMap;
import java.util.List;

import org.apache.struts2.ServletActionContext;

import portfolio.bean.PortfolioBean;
import portfolio.dao.PortfolioDao;

import com.opensymphony.xwork2.Action;

public class PortfolioList implements Action {

	
	private List<PortfolioBean> list;
	
	
	private int currentPage = 1;
	public int start;
	public int end;
	private StringBuffer sb = new StringBuffer();
	
	
	
	public List<PortfolioBean> getList() {
		return list;
	}

	public void setList(List<PortfolioBean> list) {
		this.list = list;
	}
	
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


	
	public void paging(){	
		try{		 
		   //paging
		   int pageScale=4;//tuple or page NumberCount
		   int totalRow=1;		  
		   totalRow=PortfolioDao.getTotalRow();
		   
		   System.out.println("totalRow  :  " + totalRow);
		   
		   int totalPage=totalRow%pageScale==0?(totalRow/pageScale):(totalRow/pageScale)+1;
		   if(totalRow==0)totalPage=1;	   
		    
		   start=1+(currentPage-1)*pageScale;
		   end=pageScale+(currentPage-1)*pageScale;
		   
		   int block=(currentPage%pageScale)==0?
				   currentPage/pageScale:(currentPage/pageScale)+1;
		   int startPage=1+(block-1)*pageScale;
		   int endPage=pageScale+(block-1)*pageScale;
		   if(endPage>=totalPage){
			   endPage=totalPage;
		   } 
		   
		 
		 
		 
		   sb.append("<a href='/portfolio/portfolioList.action?currentPage=1'><img src='/img/button/btn_first.gif'/></a> &nbsp;&nbsp;&nbsp;");
		   if(block>1){
		   sb.append("<a href='/portfolio/portfolioList.action?currentPage="+(startPage-1)+"'><img src='/img/button/btn_prev.gif'/></a> &nbsp;&nbsp;&nbsp;");
		   }else{		   
		   sb.append("<a href='#'><img src='/img/button/btn_prev.gif'/></a> &nbsp;&nbsp;&nbsp;");
		   }
		   sb.append("<span>");
		   for(int i=startPage;i<=endPage;i++){
		   if(currentPage==i){
			   sb.append("<font size=4 color=#87AFC7>  ["+i+"]  </font> &nbsp;&nbsp;&nbsp;");
		   }else{
		   sb.append("<a href='/portfolio/portfolioList.action?currentPage="+i+"'>  ["+i+"]  </a> &nbsp;&nbsp;&nbsp;");
		   }
		   }
		   sb.append("</span>");
		   if(endPage<totalPage)
		   sb.append("<a href='/portfolio/portfolioList.action?currentPage="+(endPage+1)+"'><img src='/img/button/btn_next.gif'/></a> &nbsp;&nbsp;&nbsp;");
		   else
		   sb.append("<a href='#'><img src='/img/button/btn_next.gif'/></a> &nbsp;&nbsp;&nbsp;");	
		   sb.append("<a href='/portfolio/portfolioList.action?currentPage="+totalPage+"'><img src='/img/button/btn_last.gif'/></a>");
		   		
		}catch(Exception e){
			e.printStackTrace();
		}
	}

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		paging();
		System.out.println(currentPage);
		
		HashMap<Object, Object>map=new HashMap<Object, Object>();
		map.put("start", start);
		map.put("end", end);		   
		   
		list=PortfolioDao.selectPortfolio(map);
		
		System.out.println(map);
		System.out.println(list);
		   
		   
		return SUCCESS;
	}
}
