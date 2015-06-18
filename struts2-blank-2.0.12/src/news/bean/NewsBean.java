package news.bean;

import java.io.File;

public class NewsBean {
	//NEWS_NO	MEM_ID	NEWS_TITLE	NEWS_CONTENT	NEWS_DATE	


	int news_no;
	String mem_id;
	String news_title;
	String news_content;
	String news_date;
	private String fileFileName;
	private File file;
	private int news_hit;
	

	public int getNews_hit() {
		return news_hit;
	}
	public void setNews_hit(int news_hit) {
		this.news_hit = news_hit;
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
	public int getNews_no() {
		return news_no;
	}
	public void setNews_no(int news_no) {
		this.news_no = news_no;
	}
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	public String getNews_title() {
		return news_title;
	}
	public void setNews_title(String news_title) {
		this.news_title = news_title;
	}
	public String getNews_content() {
		return news_content;
	}
	public void setNews_content(String news_content) {
		this.news_content = news_content;
	}
	public String getNews_date() {
		return news_date;
	}
	public void setNews_date(String news_date) {
		this.news_date = news_date;
	}
	@Override
	public String toString() {
		return "NewsBean [news_no=" + news_no + ", mem_id=" + mem_id
				+ ", news_title=" + news_title + ", news_content="
				+ news_content + ", news_date=" + news_date + ", fileFileName="
				+ fileFileName + ", file=" + file + ", news_hit=" + news_hit
				+ "]";
	}
	
	

	
	
	
	
}
