package news.action;

import java.io.FileInputStream;
import java.io.FileOutputStream;

import news.bean.NewsBean;
import news.dao.NewsDao;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;

public class newsInsertAction implements Action,Preparable,ModelDriven<NewsBean>{

	private NewsBean bean;

	public NewsBean getBean() {
		return bean;
	}

	public void setBean(NewsBean bean) {
		this.bean = bean;
	}

	@Override
	public NewsBean getModel() {
		// TODO Auto-generated method stub
		return bean;
	}

	@Override
	public void prepare() throws Exception {
		// TODO Auto-generated method stub
		this.bean=new NewsBean();
		
	}

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		System.out.println(bean);
		String path="C:\\Users\\helloworld\\git\\ITchibbo\\struts2-blank-2.0.12\\WebContent\\img\\news\\";
		FileInputStream fis = null;
		FileOutputStream fos = null;
		try {
			fis = new FileInputStream(bean.getFile());
			fos = new FileOutputStream(path+bean.getFileFileName());
			byte []b= new byte[1024*8];
			int length=0;
			while((length=fis.read(b))!=-1){
				fos.write(b,0,length);
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally{
			try {
				fis.close();
				fos.close();
			} catch (Exception e2) {
				// TODO: handle exception
			}
		}
		NewsDao.insertNews(bean);
		return SUCCESS;
	}
	
	
	
	
}
