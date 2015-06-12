package review.bean;

import java.util.Date;

public class ReviewBean {
	private int rev_no;	
	private String mem_id;
	private String rev_title;
	private String rev_com;
	private String rev_job;
	private String rev_year;
	private String rev_career;
	private String rev_content;
	private String rev_date;
	private int rev_hit;
	private int rev_ref;
	private int rev_lev;
	private int rev_step;
	private int rev_pnum;
	private int rev_reply;
	
	

	public int getRev_ref() {
		return rev_ref;
	}
	public void setRev_ref(int rev_ref) {
		this.rev_ref = rev_ref;
	}
	public int getRev_lev() {
		return rev_lev;
	}
	public void setRev_lev(int rev_lev) {
		this.rev_lev = rev_lev;
	}
	public int getRev_step() {
		return rev_step;
	}
	public void setRev_step(int rev_step) {
		this.rev_step = rev_step;
	}
	public int getRev_pnum() {
		return rev_pnum;
	}
	public void setRev_pnum(int rev_pnum) {
		this.rev_pnum = rev_pnum;
	}
	public int getRev_reply() {
		return rev_reply;
	}
	public void setRev_reply(int rev_reply) {
		this.rev_reply = rev_reply;
	}
	public int getRev_no() {
		return rev_no;
	}
	public void setRev_no(int rev_no) {
		this.rev_no = rev_no;
	}
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	public String getRev_title() {
		return rev_title;
	}
	public void setRev_title(String rev_title) {
		this.rev_title = rev_title;
	}
	public String getRev_com() {
		return rev_com;
	}
	public void setRev_com(String rev_com) {
		this.rev_com = rev_com;
	}
	public String getRev_job() {
		return rev_job;
	}
	public void setRev_job(String rev_job) {
		this.rev_job = rev_job;
	}
	public String getRev_year() {
		return rev_year;
	}
	public void setRev_year(String rev_year) {
		this.rev_year = rev_year;
	}
	public String getRev_career() {
		return rev_career;
	}
	public void setRev_career(String rev_career) {
		this.rev_career = rev_career;
	}
	public String getRev_content() {
		return rev_content;
	}
	public void setRev_content(String rev_content) {
		this.rev_content = rev_content;
	}
	public String getRev_date() {
		return rev_date;
	}
	public void setRev_date(String rev_date) {
		this.rev_date = rev_date;
	}
	public int getRev_hit() {
		return rev_hit;
	}
	public void setRev_hit(int rev_hit) {
		this.rev_hit = rev_hit;
	}
	@Override
	public String toString() {
		return "ReviewBean [rev_no=" + rev_no + ", mem_id=" + mem_id
				+ ", rev_title=" + rev_title + ", rev_com=" + rev_com
				+ ", rev_job=" + rev_job + ", rev_year=" + rev_year
				+ ", rev_career=" + rev_career + ", rev_content=" + rev_content
				+ ", rev_date=" + rev_date + ", rev_hit=" + rev_hit
				+ ", rev_ref=" + rev_ref + ", rev_lev=" + rev_lev
				+ ", rev_step=" + rev_step + ", rev_pnum=" + rev_pnum
				+ ", rev_reply=" + rev_reply + "]";
	}

	
	

	
	

	
	

}
