package expo.action;

import java.util.HashMap;
import java.util.List;

import com.opensymphony.xwork2.Action;

import expo.bean.ExpoBean;
import expo.dao.ExpoDao;

public class searchJobAction implements Action{
	private String exp_title;
	private String mem_id;
	private List<ExpoBean>list;
	private StringBuffer sb=new StringBuffer();
	
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
	public String getExp_title() {
		return exp_title;
	}
	public void setExp_title(String exp_title) {
		this.exp_title = exp_title;
	}
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		HashMap<Object, Object>map=new HashMap<Object, Object>();
		if(exp_title!=null||exp_title!=""){
			map.put("exp_title", exp_title);
			list=ExpoDao.expoSelectSearch(map);
			sb.append("[ ");	
			for (int i = 0; i < list.size(); i++) {
				ExpoBean b=list.get(i);
				
//				exp_no	mem_id	exp_title	exp_date	filefilename	exp_hit	exp_like	

				
				if(i==list.size()-1){
				sb.append("{\"exp_no\":\""+b.getExp_no()+"\",\"mem_id\":\""+b.getMem_id()+"\",\"exp_title\":\""+b.getExp_title()+"\",\"exp_date\":\""+b.getExp_date()+"\",\"fileFileName\":\""+b.getFileFileName()+"\",\"exp_hit\":\""+b.getExp_hit()+"\",\"exp_like\":\""+b.getExp_like()+"\"} ");
				}else{
					sb.append("{\"exp_no\":\""+b.getExp_no()+"\",\"mem_id\":\""+b.getMem_id()+"\",\"exp_title\":\""+b.getExp_title()+"\",\"exp_date\":\""+b.getExp_date()+"\",\"fileFileName\":\""+b.getFileFileName()+"\",\"exp_hit\":\""+b.getExp_hit()+"\",\"exp_like\":\""+b.getExp_like()+"\"}, ");	
				}
				
			}
			sb.append("] ");
		}else{
			map.put("mem_id", mem_id);
		}
		return SUCCESS;
	}
	
}
