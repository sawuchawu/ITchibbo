package recruite.bean;

public class RecruitBean {
	private String rec_no;
	private String rec_title;
	private String rec_sdate;
	private String rec_fdate;
	private String mem_id;

	public String getRec_no() {
		return rec_no;
	}

	public void setRec_no(String rec_no) {
		this.rec_no = rec_no;
	}

	public String getRec_title() {
		return rec_title;
	}

	public void setRec_title(String rec_title) {
		this.rec_title = rec_title;
	}

	public String getRec_sdate() {
		return rec_sdate;
	}

	public void setRec_sdate(String rec_sdate) {
		this.rec_sdate = rec_sdate;
	}

	public String getRec_fdate() {
		return rec_fdate;
	}

	public void setRec_fdate(String rec_fdate) {
		this.rec_fdate = rec_fdate;
	}

	public String getMem_id() {
		return mem_id;
	}

	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}

	@Override
	public String toString() {
		return "RecruitBean [rec_no=" + rec_no + ", rec_title=" + rec_title
				+ ", rec_sdate=" + rec_sdate + ", rec_fdate=" + rec_fdate
				+ ", mem_id=" + mem_id + "]";
	}

}
