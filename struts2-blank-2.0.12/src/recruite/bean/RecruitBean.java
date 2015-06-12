package recruite.bean;

public class RecruitBean {
	String title;
	String job_type;
	String salary;
	String expiration;
	String expDate;
	String rId;

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getJob_type() {
		return job_type;
	}

	public void setJob_type(String job_type) {
		this.job_type = job_type;
	}

	public String getSalary() {
		return salary;
	}

	public void setSalary(String salary) {
		this.salary = salary;
	}

	public String getExpiration() {
		return expiration;
	}

	public void setExpiration(String expiration) {
		this.expiration = expiration;
	}

	public String getExpDate() {
		return expDate;
	}

	public void setExpDate(String expDate) {
		this.expDate = expDate;
	}

	public String getrId() {
		return rId;
	}

	public void setrId(String rId) {
		this.rId = rId;
	}

	@Override
	public String toString() {
		return "RecruitBean [title=" + title + ", job_type=" + job_type
				+ ", salary=" + salary + ", expiration=" + expiration
				+ ", expDate=" + expDate + ", rId=" + rId + "]";
	}

	
}
