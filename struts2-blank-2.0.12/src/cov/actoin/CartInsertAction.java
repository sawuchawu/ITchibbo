package cov.actoin;

import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;

import cov.bean.CartListBean;
import cov.dao.CovDao;

public class CartInsertAction implements Action,Preparable,ModelDriven<CartListBean>{
	private CartListBean bean;
	
	
	@Override
	public CartListBean getModel() {
		// TODO Auto-generated method stub
		return bean;
	}

	@Override
	public void prepare() throws Exception {
		// TODO Auto-generated method stub
		this.bean=new CartListBean();
	}

	public CartListBean getBean() {
		return bean;
	}

	public void setBean(CartListBean bean) {
		this.bean = bean;
	}

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		String covno=bean.getCov_no();
		System.out.println(bean.getCov_no().split(",").length+"   하나 넣었을때 렝스는?");
		int count=bean.getCov_no().split(",").length;
		System.out.println(bean.getCov_no()+"   하나 넣었을때 렝스는?"+covno);
		if(bean.getCov_no().split(",").length==1){
			for(int i=0; i<bean.getCov_no().split(",").length;i++){
				System.out.println(covno.split(",")[i]);
				bean.setCov_no(covno.split(",")[i]);
				CovDao.insertCart(bean);
			}
			
		}else{
		for(int i=0; i<count;i++){
			System.out.println(covno.split(",")[i]);
			bean.setCov_no(covno.split(",")[i]);
			CovDao.insertCart(bean);
		}
		}
		return SUCCESS;
	} 
	
}
