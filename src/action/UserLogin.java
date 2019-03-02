package action;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;



import dao.UserDAO;
import entity.User;

public class UserLogin {
    private String u_id;//用户名
    private String u_name;//姓名
    private String u_grade;//年级
    private String f_id;//学院
    private String m_id;//专业
    private String u_pwd;//密码
    private int u_type;//类型
    private int u_maxb;//
    private String u_lable;//标签
    private String strerr;
    private User u;
    
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
    public String getStrerr() {
        return strerr;
    }
    public void setStrerr(String strerr) {
        this.strerr = strerr;
    }
    public User getU() {
        return u;
    }
    public void setU(User u) {
        this.u = u;
    }
    
    public String Check() {
        String re = "";
        UserDAO dao = new UserDAO();
        User u=new User();
        u.setU_id(u_id);
        u.setU_pwd(u_pwd);
        if(dao.isValid(u)){
        	u=dao.getById(u_id);
            HttpSession session = ServletActionContext.getRequest().getSession();
            session.setAttribute("user", u);
            re = "loginok";
            strerr = "";
           }
        else{
            u = null;
            strerr = "<font color='red' size = '2'>登录失败</font>";
            re = "loginfail";
            
            System.out.println("验证失败");
        }       
        return re;
    }
}
