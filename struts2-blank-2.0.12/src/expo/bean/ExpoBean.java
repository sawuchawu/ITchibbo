package expo.bean;

import java.io.File;

public class ExpoBean {
	private int exmp_no;
	private String mem_id;
	private String exp_title;
	private String exp_date;
	private String exp_fileName;
	private File file;
	public int getExmp_no() {
		return exmp_no;
	}
	public void setExmp_no(int exmp_no) {
		this.exmp_no = exmp_no;
	}
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	public String getExp_title() {
		return exp_title;
	}
	public void setExp_title(String exp_title) {
		this.exp_title = exp_title;
	}
	public String getExp_date() {
		return exp_date;
	}
	public void setExp_date(String exp_date) {
		this.exp_date = exp_date;
	}
	public String getExp_fileName() {
		return exp_fileName;
	}
	public void setExp_fileName(String exp_fileName) {
		this.exp_fileName = exp_fileName;
	}
	public File getFile() {
		return file;
	}
	public void setFile(File file) {
		this.file = file;
	}
	@Override
	public String toString() {
		return "ExpoBean [exmp_no=" + exmp_no + ", mem_id=" + mem_id
				+ ", exp_title=" + exp_title + ", exp_date=" + exp_date
				+ ", exp_fileName=" + exp_fileName + ", file=" + file + "]";
	}
	

	
}
