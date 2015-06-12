package qna.action;

import qna.dao.QnaDao;
import reply.bean.ReplyBean;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;

public class QnareplyInsertAction implements Action, Preparable,
ModelDriven<ReplyBean> {
private ReplyBean bean;
private String jobs;

private int qna_no;

public int getQna_no() {
	return qna_no;
}

public void setQna_no(int qna_no) {
	this.qna_no = qna_no;
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
qna_no = bean.getRep_infono();
bean.setRep_no(QnaDao.getSequence());
if (bean.getRep_job().equals("new")) {
	bean.setRep_pnum(bean.getRep_no());
	bean.setRep_ref(bean.getRep_no());
} else {

}
System.out.println("reply insert");
System.out.println(bean);
QnaDao.insertReply(bean);
System.out.println("reply insert complete");
return SUCCESS;
}

}
