package cov.bean;

public class CartListBean {
	private String pk;
	private String cov_no;
	private String mem_id;
	public String getPk() {
		return pk;
	}
	public void setPk(String pk) {
		this.pk = pk;
	}
	public String getCov_no() {
		return cov_no;
	}
	public void setCov_no(String cov_no) {
		this.cov_no = cov_no;
	}
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	@Override
	public String toString() {
		return "CartListBean [pk=" + pk + ", cov_no=" + cov_no + ", mem_id="
				+ mem_id + "]";
	}
	
}
