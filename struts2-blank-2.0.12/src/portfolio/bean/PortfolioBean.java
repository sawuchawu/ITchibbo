package portfolio.bean;

import java.io.File;

public class PortfolioBean {

	private int    por_no;
	private String mem_id;
	private String por_title;
	private String por_job;
	private String por_content;
	private File   pdf;
	private String pdfFileName;
	private File   img;
	private String imgFileName;
	private String por_regDate;
	private int    por_hit;
	private int    por_like;
	public int getPor_no() {
		return por_no;
	}
	public void setPor_no(int por_no) {
		this.por_no = por_no;
	}
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	public String getPor_title() {
		return por_title;
	}
	public void setPor_title(String por_title) {
		this.por_title = por_title;
	}
	public String getPor_job() {
		return por_job;
	}
	public void setPor_job(String por_job) {
		this.por_job = por_job;
	}
	public String getPor_content() {
		return por_content;
	}
	public void setPor_content(String por_content) {
		this.por_content = por_content;
	}
	public File getPdf() {
		return pdf;
	}
	public void setPdf(File pdf) {
		this.pdf = pdf;
	}
	public String getPdfFileName() {
		return pdfFileName;
	}
	public void setPdfFileName(String pdfFileName) {
		this.pdfFileName = pdfFileName;
	}
	public File getImg() {
		return img;
	}
	public void setImg(File img) {
		this.img = img;
	}
	public String getImgFileName() {
		return imgFileName;
	}
	public void setImgFileName(String imgFileName) {
		this.imgFileName = imgFileName;
	}
	public String getPor_regDate() {
		return por_regDate;
	}
	public void setPor_regDate(String por_regDate) {
		this.por_regDate = por_regDate;
	}
	public int getPor_hit() {
		return por_hit;
	}
	public void setPor_hit(int por_hit) {
		this.por_hit = por_hit;
	}
	public int getPor_like() {
		return por_like;
	}
	public void setPor_like(int por_like) {
		this.por_like = por_like;
	}
	@Override
	public String toString() {
		return "PortfolioBean [por_no=" + por_no + ", mem_id=" + mem_id
				+ ", por_title=" + por_title + ", por_job=" + por_job
				+ ", por_content=" + por_content + ", pdf=" + pdf
				+ ", pdfFileName=" + pdfFileName + ", img=" + img
				+ ", imgFileName=" + imgFileName + ", por_regDate="
				+ por_regDate + ", por_hit=" + por_hit + ", por_like="
				+ por_like + "]";
	}
	
	
}
