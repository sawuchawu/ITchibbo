package cov.action;

import java.io.FileInputStream;
import java.io.FileOutputStream;

import news.dao.NewsDao;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;

import cov.bean.CovBean;
import cov.dao.CovDao;

public class covInsertAction implements Action,Preparable,ModelDriven<CovBean>{

	private CovBean bean;

	public CovBean getBean() {
		return bean;
	}

	public void setBean(CovBean bean) {
		this.bean = bean;
	}

	@Override
	public CovBean getModel() {
		// TODO Auto-generated method stub
		return bean;
	}

	@Override
	public void prepare() throws Exception {
		// TODO Auto-generated method stub
		this.bean=new CovBean();
		
	}

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		//System.out.println(bean);
		
	
		System.out.println(bean);
		String path="C:\\Users\\helloworld\\git\\ITchibbo\\struts2-blank-2.0.12\\WebContent\\img\\cov\\";
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
		CovDao.insertCov(bean);
		return SUCCESS;
	
		
	}
	
	
	
	
}
