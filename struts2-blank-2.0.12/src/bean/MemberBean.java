package bean;


public class MemberBean {
	String mem_id;
	String mem_pw;
	String mem_name;
	String mem_email;
	String mem_phone;
	String mem_flag;
	String mem_d_flag;

	

	public String getMem_flag() {
		return mem_flag;
	}
	public void setMem_flag(String mem_flag) {
		this.mem_flag = mem_flag;
	}
	public String getMem_d_flag() {
		return mem_d_flag;
	}
	public void setMem_d_flag(String mem_d_flag) {
		this.mem_d_flag = mem_d_flag;
	}
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	public String getMem_pw() {
		return mem_pw;
	}
	public void setMem_pw(String mem_pw) {
		this.mem_pw = mem_pw;
	}
	public String getMem_name() {
		return mem_name;
	}
	public void setMem_name(String mem_name) {
		this.mem_name = mem_name;
	}
	public String getMem_email() {
		return mem_email;
	}
	public void setMem_email(String mem_email) {
		this.mem_email = mem_email;
	}
	public String getMem_phone() {
		return mem_phone;
	}
	public void setMem_phone(String mem_phone) {
		this.mem_phone = mem_phone;
	}
	@Override
	public String toString() {
		return "MemberBean [mem_id=" + mem_id + ", mem_pw=" + mem_pw
				+ ", mem_name=" + mem_name + ", mem_email=" + mem_email
				+ ", mem_phone=" + mem_phone + ", mem_flag=" + mem_flag
				+ ", mem_d_flag=" + mem_d_flag + "]";
	}

	
	


	
	
}
