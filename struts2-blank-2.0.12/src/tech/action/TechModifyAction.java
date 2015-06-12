package tech.action;

import java.io.FileInputStream;
import java.io.FileOutputStream;

import tech.bean.TechBean;
import tech.dao.TechDao;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;



public class TechModifyAction implements Action, Preparable,
		ModelDriven<TechBean> {
	private TechBean bean;
	private String job;

	public TechBean getBean() {
		return bean;
	}

	public void setBean(TechBean bean) {
		this.bean = bean;
	}

	public String getJob() {
		return job;
	}

	public void setJob(String job) {
		this.job = job;
	}

	@Override
	public TechBean getModel() {
		// TODO Auto-generated method stub
		return bean;
	}

	@Override
	public void prepare() throws Exception {
		// TODO Auto-generated method stub
		this.bean = new TechBean();

	}

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		System.out.println(bean);
		String path = "D:\\project\\ITchibbo\\struts2-blank-2.0.12\\WebContent\\img\\tech\\";
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
		TechDao.TechUpdate(bean);
		System.out.println("³Ñ¾î¿È");
		return SUCCESS;
	}

}
