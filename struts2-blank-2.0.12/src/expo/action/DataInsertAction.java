package expo.action;

import java.io.FileInputStream;
import java.io.FileOutputStream;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;

import expo.bean.ExpoBean;
import expo.dao.ExpoDao;

public class DataInsertAction implements Action,Preparable,ModelDriven<ExpoBean>{
	private ExpoBean bean;
	
	public ExpoBean getBean() {
		return bean;
	}

	public void setBean(ExpoBean bean) {
		this.bean = bean;
	}

	@Override
	public ExpoBean getModel() {
		// TODO Auto-generated method stub
		return bean;
	}

	@Override
	public void prepare() throws Exception {
		// TODO Auto-generated method stub
		this.bean=new ExpoBean();
	}

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		System.out.println(bean);

		String path="D:\\project\\git\\ITchibbo\\ITchibbo\\struts2-blank-2.0.12\\WebContent\\img\\expo\\";
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
		ExpoDao.insertExpo(bean);
		return SUCCESS;
	}

}
