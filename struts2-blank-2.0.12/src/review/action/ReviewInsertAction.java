package review.action;

import review.bean.ReviewBean;
import review.dao.ReviewDao;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;


public class ReviewInsertAction implements Action, Preparable, ModelDriven<ReviewBean>{

	private ReviewBean bean;
	
	public ReviewBean getBean() {
		return bean;
	}

	public void setBean(ReviewBean bean) {
		this.bean = bean;
	}
	
	@Override
	public ReviewBean getModel() {
		// TODO Auto-generated method stub
		return bean;
	}

	@Override
	public void prepare() throws Exception {
		// TODO Auto-generated method stub
		this.bean=new ReviewBean();
	}

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		System.out.println(bean);
		ReviewDao.insertReview(bean);
		return SUCCESS;
	}
		
}
