package entity;
import java.util.*;
public class Announcements {
	private int announce_id;//公告编号
	private Date announce_date;//日期
	private String announce_title;//标题
	private String announce_text;//内容
	private String announce_author;
	
	public int getAnnounce_id() {
		return announce_id;
	}
	public void setAnnounce_id(int announce_id) {
		this.announce_id = announce_id;
	}
	public Date getAnnounce_date() {
		return announce_date;
	}
	public void setAnnounce_date(Date announce_date) {
		this.announce_date = announce_date;
	}
	public String getAnnounce_title() {
		return announce_title;
	}
	public void setAnnounce_title(String announce_title) {
		this.announce_title = announce_title;
	}
	public String getAnnounce_text() {
		return announce_text;
	}
	public void setAnnounce_text(String announce_text) {
		this.announce_text = announce_text;
	}
	public String getAnnounce_author() {
		return announce_author;
	}
	public void setAnnounce_author(String announce_author) {
		this.announce_author = announce_author;
	}
	
}
