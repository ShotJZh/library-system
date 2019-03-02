package entity;

public class User {
	private String u_id;//用户名
	private String u_name;//姓名
	private String u_grade;//年级编号
	private String f_id;//学院编号
	private String m_id;//专业编号
	private String u_pwd;//密码
	private int u_type;//类型
	private int u_maxb;//
	private String u_lable;//标签
	
	//set&get
	public String getU_id() {
		return u_id;
	}
	public void setU_id(String u_id) {
		this.u_id = u_id;
	}
	public String getU_name() {
		return u_name;
	}
	public void setU_name(String u_name) {
		this.u_name = u_name;
	}
	public String getU_grade() {
		return u_grade;
	}
	public void setU_grade(String u_grade) {
		this.u_grade = u_grade;
	}
	public String getF_id() {
		return f_id;
	}
	public void setF_id(String f_id) {
		this.f_id = f_id;
	}
	public String getM_id() {
		return m_id;
	}
	public void setM_id(String m_id) {
		this.m_id = m_id;
	}
	public String getU_pwd() {
		return u_pwd;
	}
	public void setU_pwd(String u_pwd) {
		this.u_pwd = u_pwd;
	}
	public int getU_type() {
		return u_type;
	}
	public void setU_type(int u_type) {
		this.u_type = u_type;
	}
	public int getU_maxb() {
		return u_maxb;
	}
	public void setU_maxb(int u_maxb) {
		this.u_maxb = u_maxb;
	}
	public String getU_lable() {
		return u_lable;
	}
	public void setU_lable(String u_lable) {
		this.u_lable = u_lable;
	}
}
