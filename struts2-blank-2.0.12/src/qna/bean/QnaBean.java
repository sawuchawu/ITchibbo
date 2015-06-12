package qna.bean;

public class QnaBean {
	

	private int qna_no;
	private String mem_id;
	private String qna_title;
	private String qna_content;
	private String qna_date;
	private int qna_ref;
	private int qna_lev;
	private int qna_step;
	private int qna_pnum;
	private int qna_reply;
	private int qna_hit;
	
	
	public int getQna_hit() {
		return qna_hit;
	}
	public void setQna_hit(int qna_hit) {
		this.qna_hit = qna_hit;
	}
	public int getQna_no() {
		return qna_no;
	}
	public void setQna_no(int qna_no) {
		this.qna_no = qna_no;
	}
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	public String getQna_title() {
		return qna_title;
	}
	public void setQna_title(String qna_title) {
		this.qna_title = qna_title;
	}
	public String getQna_content() {
		return qna_content;
	}
	public void setQna_content(String qna_content) {
		this.qna_content = qna_content;
	}
	public String getQna_date() {
		return qna_date;
	}
	public void setQna_date(String qna_date) {
		this.qna_date = qna_date;
	}
	public int getQna_ref() {
		return qna_ref;
	}
	public void setQna_ref(int qna_ref) {
		this.qna_ref = qna_ref;
	}
	public int getQna_lev() {
		return qna_lev;
	}
	public void setQna_lev(int qna_lev) {
		this.qna_lev = qna_lev;
	}
	public int getQna_step() {
		return qna_step;
	}
	public void setQna_step(int qna_step) {
		this.qna_step = qna_step;
	}
	public int getQna_pnum() {
		return qna_pnum;
	}
	public void setQna_pnum(int qna_pnum) {
		this.qna_pnum = qna_pnum;
	}
	public int getQna_reply() {
		return qna_reply;
	}
	public void setQna_reply(int qna_reply) {
		this.qna_reply = qna_reply;
	}
	@Override
	public String toString() {
		return "QnaBean [qna_no=" + qna_no + ", mem_id=" + mem_id
				+ ", qna_title=" + qna_title + ", qna_content=" + qna_content
				+ ", qna_date=" + qna_date + ", qna_ref=" + qna_ref
				+ ", qna_lev=" + qna_lev + ", qna_step=" + qna_step
				+ ", qna_pnum=" + qna_pnum + ", qna_reply=" + qna_reply
				+ ", qna_hit=" + qna_hit + "]";
	}
	
	
	
	
	
	
	
	
	
	
	
	
}
