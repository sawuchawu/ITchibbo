package cov.action;

import java.io.FileInputStream;
import java.io.FileOutputStream;

import news.dao.NewsDao;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;

import cov.bean.CovBean;
import cov.dao.CovDao;

public class covModifyAction implements Action,Preparable,ModelDriven<CovBean> {
	private CovBean bean;
	private String job;
	
	
	public CovBean getBean() {
		return bean;
	}

	public void setBean(CovBean bean) {
		this.bean = bean;
	}

	public String getJob() {
		return job;
	}

	public void setJob(String job) {
		this.job = job;
	}
	
	@Override
	public CovBean getModel() {
		// TODO Auto-generated method stub
		return bean;
	}

	@Override
	public void prepare() throws Exception {
		// TODO Auto-generated method stub
		this.bean= new CovBean();
	}

	@Override
	public String execute() throws Exception {
		/*System.out.println(bean);
		// TODO Auto-generated method stub
		String path="C:\\Users\\helloworld\\git\\ITchibbo\\struts2-blank-2.0.12\\WebContent\\img\\expo\\";
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
		CovDao.covUpdateData(bean);
		return SUCCESS;*/
		
		System.out.println(bean);
		String path = "D:\\project\\git\\ITchibbo\\ITchibbo\\struts2-blank-2.0.12\\WebContent\\img\\cov\\";
		//String path = "D:\\project\\ITchibbo\\ITchibbo\\struts2-blank-2.0.12\\WebContent\\img\\news\\";
		//String path="C:\\Users\\helloworld\\git\\ITchibbo\\struts2-blank-2.0.12\\WebContent\\img\\news\\";
		FileInputStream fis = null;
		FileOutputStream fos = null;
		try {
			fis = new FileInputStream(bean.getFile());
			fos = new FileOutputStream(path + bean.getFileFileName());
			byte[] b = new byte[1024 * 8];
			int length = 0;
			while ((length = fis.read(b)) != -1) {
				fos.write(b, 0, length);
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			try {
				fis.close();
				fos.close();
			} catch (Exception e2) {
				// TODO: handle exception
			}
		}
		CovDao.covUpdateData(bean);
		System.out.println("�꽆�뼱�샂");
		return SUCCESS;
	
		
		
	}

	
}