package entity;
import java.util.*;
public class News {
	private String n_title;//标题
	private String n_link;//链接
	private String n_abstract;//摘要
	private String m_id;//专业号
	private Date n_date;//日期
	private String n_pic;
	public String getN_title() {
		return n_title;
	}
	public void setN_title(String n_title) {
		this.n_title = n_title;
	}
	public String getN_link() {
		return n_link;
	}
	public void setN_link(String n_link) {
		this.n_link = n_link;
	}
	public String getN_abstract() {
		return n_abstract;
	}
	public void setN_abstract(String n_abstract) {
		this.n_abstract = n_abstract;
	}
	public String getM_id() {
		return m_id;
	}
	public void setM_id(String m_id) {
		this.m_id = m_id;
	}
	public Date getN_date() {
		return n_date;
	}
	public void setN_date(Date n_date) {
		this.n_date = n_date;
	}
	public String getN_pic() {
		return n_pic;
	}
	public void setN_pic(String n_pic) {
		this.n_pic = n_pic;
	}
	
}
