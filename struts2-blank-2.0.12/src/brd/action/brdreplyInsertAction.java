package brd.action;

import qna.dao.QnaDao;
import reply.bean.ReplyBean;
import brd.dao.BrdDao;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;

public class brdreplyInsertAction implements Action, Preparable,
ModelDriven<ReplyBean> {
private ReplyBean bean;
private String jobs;

private int brd_no;



public int getBrd_no() {
	return brd_no;
}

public void setBrd_no(int brd_no) {
	this.brd_no = brd_no;
}

public String getJobs() {
return jobs;
}

public void setJobs(String jobs) {
this.jobs = jobs;
}

public ReplyBean getBean() {
return bean;
}

public void setBean(ReplyBean bean) {
this.bean = bean;
}

@Override
public ReplyBean getModel() {
// TODO Auto-generated method stub
return bean;
}

@Override
public void prepare() throws Exception {
// TODO Auto-generated method stub
this.bean = new ReplyBean();
}

@Override
public String execute() throws Exception {
// TODO Auto-generated method stub
brd_no = bean.getRep_infono();
bean.setRep_no(BrdDao.getSequence());
if (bean.getRep_job().equals("new")) {
	bean.setRep_pnum(bean.getRep_no());
	bean.setRep_ref(bean.getRep_no());
} else {

}
System.out.println("reply insert");
System.out.println(bean);
BrdDao.insertReply(bean);
System.out.println("reply insert complete");
return SUCCESS;
}

}
