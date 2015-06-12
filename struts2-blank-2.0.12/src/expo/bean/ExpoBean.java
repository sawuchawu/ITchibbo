package expo.bean;

import java.io.File;

public class ExpoBean {
	private int exp_no;
	private String mem_id;
	private String exp_title;
	private String exp_date;
	private String fileFileName;
	private File file;
	private int exp_hit;
	private int exp_like;
	
	public int getExp_like() {
		return exp_like;
	}
	public void setExp_like(int exp_like) {
		this.exp_like = exp_like;
	}
	public int getExp_hit() {
		return exp_hit;
	}
	public void setExp_hit(int exp_hit) {
		this.exp_hit = exp_hit;
	}
	public int getExp_no() {
		return exp_no;
	}
	public void setExp_no(int exp_no) {
		this.exp_no = exp_no;
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
	public String getFileFileName() {
		return fileFileName;
	}
	public void setFileFileName(String fileFileName) {
		this.fileFileName = fileFileName;
	}
	public File getFile() {
		return file;
	}
	public void setFile(File file) {
		this.file = file;
	}
	@Override
	public String toString() {
		return "ExpoBean [exp_no=" + exp_no + ", mem_id=" + mem_id
				+ ", exp_title=" + exp_title + ", exp_date=" + exp_date
				+ ", fileFileName=" + fileFileName + ", file=" + file
				+ ", exp_hit=" + exp_hit + ", exp_like=" + exp_like + "]";
	}
	
	
	
	
}
