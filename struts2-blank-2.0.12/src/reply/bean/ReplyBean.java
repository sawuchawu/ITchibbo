package reply.bean;

public class ReplyBean {

	private int rep_no;
	private String mem_id;
	private String rep_content;
	private String rep_regdate;
	private int rep_infono;
	private int rep_ref;
	private int rep_pnum;
	private int rep_step;
	private int rep_reply;
	private String rep_job;
	private int rep_flag;

	public int getRep_no() {
		return rep_no;
	}

	public void setRep_no(int rep_no) {
		this.rep_no = rep_no;
	}

	public String getMem_id() {
		return mem_id;
	}

	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}

	public String getRep_content() {
		return rep_content;
	}

	public void setRep_content(String rep_content) {
		this.rep_content = rep_content;
	}

	public String getRep_regdate() {
		return rep_regdate;
	}

	public void setRep_regdate(String rep_regdate) {
		this.rep_regdate = rep_regdate;
	}

	public int getRep_infono() {
		return rep_infono;
	}

	public void setRep_infono(int rep_infono) {
		this.rep_infono = rep_infono;
	}

	public int getRep_ref() {
		return rep_ref;
	}

	public void setRep_ref(int rep_ref) {
		this.rep_ref = rep_ref;
	}

	public int getRep_pnum() {
		return rep_pnum;
	}

	public void setRep_pnum(int rep_pnum) {
		this.rep_pnum = rep_pnum;
	}

	public int getRep_step() {
		return rep_step;
	}

	public void setRep_step(int rep_step) {
		this.rep_step = rep_step;
	}

	public int getRep_reply() {
		return rep_reply;
	}

	public void setRep_reply(int rep_reply) {
		this.rep_reply = rep_reply;
	}

	public String getRep_job() {
		return rep_job;
	}

	public void setRep_job(String rep_job) {
		this.rep_job = rep_job;
	}

	public int getRep_flag() {
		return rep_flag;
	}

	public void setRep_flag(int rep_flag) {
		this.rep_flag = rep_flag;
	}

	@Override
	public String toString() {
		return "ReplyBean [rep_no=" + rep_no + ", mem_id=" + mem_id
				+ ", rep_content=" + rep_content + ", rep_regdate="
				+ rep_regdate + ", rep_infono=" + rep_infono + ", rep_ref="
				+ rep_ref + ", rep_pnum=" + rep_pnum + ", rep_step=" + rep_step
				+ ", rep_reply=" + rep_reply + ", rep_job=" + rep_job
				+ ", rep_flag=" + rep_flag + "]";
	}

}