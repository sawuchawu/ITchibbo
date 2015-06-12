package brd.bean;

public class BoardBean {

	//BRD_NO	MEM_ID	BRD_TITLE	BRD_CONTENT	BRD_DATE	
	//BRD_HIT	BRD_REF	BRD_LEV	BRD_STEP	BRD_PNUM	BRD_REPLY	
	
	private int brd_no;
	private String mem_id;
	private String brd_title;
	private String brd_content;
	private String brd_date;
	private int brd_hit;
	
	public int getBrd_no() {
		return brd_no;
	}
	public void setBrd_no(int brd_no) {
		this.brd_no = brd_no;
	}
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	public String getBrd_title() {
		return brd_title;
	}
	public void setBrd_title(String brd_title) {
		this.brd_title = brd_title;
	}
	public String getBrd_content() {
		return brd_content;
	}
	public void setBrd_content(String brd_content) {
		this.brd_content = brd_content;
	}
	public String getBrd_date() {
		return brd_date;
	}
	public void setBrd_date(String brd_date) {
		this.brd_date = brd_date;
	}
	
	public int getBrd_hit() {
		return brd_hit;
	}
	public void setBrd_hit(int brd_hit) {
		this.brd_hit = brd_hit;
	}
	@Override
	public String toString() {
		return "BoardBean [brd_no=" + brd_no + ", mem_id=" + mem_id
				+ ", brd_title=" + brd_title + ", brd_content=" + brd_content
				+ ", brd_date=" + brd_date + ", brd_hit=" + brd_hit + "]";
	}
	
	

	
}
