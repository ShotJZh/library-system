package entity;

import java.util.Date;

public class Book {
	private String b_id;//书籍编号
	private String b_name;//书名
	private String b_pic;//图片
	private String b_author;//作者
	private String b_press;//出版社
	private String b_location;//地点
	private int b_in;//在馆数
	private int b_out;//借出数
	private int b_borrowtimes;//借阅次数
	private Date b_addtime;//添加时间
	private String b_type;//类型编号
	private String b_description;
	
	public String getB_description() {
		return b_description;
	}
	public void setB_description(String b_description) {
		this.b_description = b_description;
	}
	public String getB_id() {
		return b_id;
	}
	public void setB_id(String b_id) {
		this.b_id = b_id;
	}
	public String getB_name() {
		return b_name;
	}
	public void setB_name(String b_name) {
		this.b_name = b_name;
	}
	public String getB_pic() {
		return b_pic;
	}
	public void setB_pic(String b_pic) {
		this.b_pic = b_pic;
	}
	public String getB_author() {
		return b_author;
	}
	public void setB_author(String b_author) {
		this.b_author = b_author;
	}
	public String getB_press() {
		return b_press;
	}
	public void setB_press(String b_press) {
		this.b_press = b_press;
	}
	public String getB_location() {
		return b_location;
	}
	public void setB_location(String b_location) {
		this.b_location = b_location;
	}
	public int getB_in() {
		return b_in;
	}
	public void setB_in(int b_in) {
		this.b_in = b_in;
	}
	public int getB_out() {
		return b_out;
	}
	public void setB_out(int b_out) {
		this.b_out = b_out;
	}
	public int getB_borrowtimes() {
		return b_borrowtimes;
	}
	public void setB_borrowtimes(int b_borrowtimes) {
		this.b_borrowtimes = b_borrowtimes;
	}
	public Date getB_addtime() {
		return b_addtime;
	}
	public void setB_addtime(Date b_addtime) {
		this.b_addtime = b_addtime;
	}
	public String getB_type() {
		return b_type;
	}
	public void setB_type(String b_type) {
		this.b_type = b_type;
	}
	
	
}
