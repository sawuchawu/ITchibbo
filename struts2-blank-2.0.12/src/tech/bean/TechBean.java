package tech.bean;

import java.io.File;

public class TechBean {

	private int tec_no;
	private String mem_id;
	private String tec_title;
	private String tec_content;
	private String tec_date;
	private String fileFileName;
	private File file;
	private int tec_hit;

	public int getTec_no() {
		return tec_no;
	}

	public void setTec_no(int tec_no) {
		this.tec_no = tec_no;
	}

	public String getMem_id() {
		return mem_id;
	}

	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}

	public String getTec_title() {
		return tec_title;
	}

	public void setTec_title(String tec_title) {
		this.tec_title = tec_title;
	}

	public String getTec_content() {
		return tec_content;
	}

	public void setTec_content(String tec_content) {
		this.tec_content = tec_content;
	}

	public String getTec_date() {
		return tec_date;
	}

	public void setTec_date(String tec_date) {
		this.tec_date = tec_date;
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

	public int getTec_hit() {
		return tec_hit;
	}

	public void setTec_hit(int tec_hit) {
		this.tec_hit = tec_hit;
	}

	@Override
	public String toString() {
		return "TechBean [tec_no=" + tec_no + ", mem_id=" + mem_id
				+ ", tec_title=" + tec_title + ", tec_content=" + tec_content
				+ ", tec_date=" + tec_date + ", fileFileName=" + fileFileName
				+ ", file=" + file + ", tec_hit=" + tec_hit + "]";
	}

}
