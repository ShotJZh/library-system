package entity;
import java.util.*;
public class TeacherRecommend {
	private Book rBook;//推荐图书
	private User teacher;//推荐老师
	private Date recommendDate;//推荐日期
	private String reason;
	public Book getrBook() {
		return rBook;
	}
	public void setrBook(Book rBook) {
		this.rBook = rBook;
	}
	public User getTeacher() {
		return teacher;
	}
	public void setTeacher(User teacher) {
		this.teacher = teacher;
	}
	public Date getRecommendDate() {
		return recommendDate;
	}
	public void setRecommendDate(Date recommendDate) {
		this.recommendDate = recommendDate;
	}
	public String getReason() {
		return reason;
	}
	public void setReason(String reason) {
		this.reason = reason;
	}
	
	
}
