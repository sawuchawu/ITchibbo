package cov.bean;

import java.io.File;

public class CovBean {

	private String cov_no;
	private String mem_id;
	private String cov_title;
	private String cov_com;
	private String cov_job;
	private String cov_year;
	private String cov_content;
	private String fileFileName;
	private String cov_spec;
	private String cov_price;
	private String cov_date;
	private File file;
	
	public File getFile() {
		return file;
	}
	public void setFile(File file) {
		this.file = file;
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
	public String getCov_title() {
		return cov_title;
	}
	public void setCov_title(String cov_title) {
		this.cov_title = cov_title;
	}
	public String getCov_com() {
		return cov_com;
	}
	public void setCov_com(String cov_com) {
		this.cov_com = cov_com;
	}
	public String getCov_job() {
		return cov_job;
	}
	public void setCov_job(String cov_job) {
		this.cov_job = cov_job;
	}
	public String getCov_year() {
		return cov_year;
	}
	public void setCov_year(String cov_year) {
		this.cov_year = cov_year;
	}
	public String getCov_content() {
		return cov_content;
	}
	public void setCov_content(String cov_content) {
		this.cov_content = cov_content;
	}
	
	public String getFileFileName() {
		return fileFileName;
	}
	public void setFileFileName(String fileFileName) {
		this.fileFileName = fileFileName;
	}
	public String getCov_spec() {
		return cov_spec;
	}
	public void setCov_spec(String cov_spec) {
		this.cov_spec = cov_spec;
	}
	public String getCov_price() {
		return cov_price;
	}
	public void setCov_price(String cov_price) {
		this.cov_price = cov_price;
	}
	public String getCov_date() {
		return cov_date;
	}
	public void setCov_date(String cov_date) {
		this.cov_date = cov_date;
	}
	@Override
	public String toString() {
		return "CovBean [cov_no=" + cov_no + ", mem_id=" + mem_id
				+ ", cov_title=" + cov_title + ", cov_com=" + cov_com
				+ ", cov_job=" + cov_job + ", cov_year=" + cov_year
				+ ", cov_content=" + cov_content + ", fileFileName="
				+ fileFileName + ", cov_spec=" + cov_spec + ", cov_price="
				+ cov_price + ", cov_date=" + cov_date + ", file=" + file + "]";
	}
	

	

	
	
}
