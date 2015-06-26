package portfolio.action;

import java.io.FileInputStream;
import java.io.FileOutputStream;

import portfolio.bean.PortfolioBean;
import portfolio.dao.PortfolioDao;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;

public class PortfolioInsert implements Action, Preparable, ModelDriven<PortfolioBean>{

	private PortfolioBean bean;
	
	public PortfolioBean getBean() {
		return bean;
	}

	public void setBean(PortfolioBean bean) {
		this.bean = bean;
	}

	@Override
	public PortfolioBean getModel() {
		// TODO Auto-generated method stub
		return bean;
	}

	@Override
	public void prepare() throws Exception {
		// TODO Auto-generated method stub
		this.bean = new PortfolioBean();
	}

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		System.out.println("insertAction");
		String path="D:\\project\\ITchibbo\\struts2-blank-2.0.12\\WebContent\\img\\portfolioUp\\";
		FileInputStream fisPdf=null;		
		FileOutputStream fosPdf=null;
		
		
		try {
			fisPdf=new FileInputStream(bean.getPdf());
			fosPdf=new FileOutputStream(path+bean.getPdfFileName());
			
			byte []b=new byte[1024*8];
			int lengthPdf=0;
			
			
			while((lengthPdf=fisPdf.read(b))!=-1){
				fosPdf.write(b, 0, lengthPdf);
			}
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			System.out.println(bean.getPdf());
			System.out.println(bean.getPdfFileName());
			
			try {
				fisPdf.close();
				fosPdf.close();				
							
			} catch (Exception e2) {
				// TODO: handle exception
				e2.printStackTrace();
			}
		}
		
		
		FileInputStream fisImg=null;
		FileOutputStream fosImg=null;
		
		byte []c=new byte[1024*8];
		int lengthImg=0;
		
		try {
			fisImg=new FileInputStream(bean.getImg());
			fosImg=new FileOutputStream(path+bean.getImgFileName());
			
			while((lengthImg=fisImg.read(c))!=-1){
				fosImg.write(c, 0, lengthImg);
			}
			System.out.println(bean.getImgFileName());
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			try {
				fisImg.close();
				fosImg.close();	
			} catch (Exception e2) {
				// TODO: handle exception
				e2.printStackTrace();
			}
			
		}
		
		
		System.out.println(bean);
		PortfolioDao.insertPortfolio(bean);
		

		System.out.println("insertAction Complete");
		return SUCCESS;
	}
}
