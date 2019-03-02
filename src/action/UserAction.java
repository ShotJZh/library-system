package action;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import dao.BookDAO;
import dao.UserDAO;
import entity.User;

public class UserAction {
    private String u_id;//用户名
    private String u_name;//姓名
    private String u_grade;//年级
    private String f_id;//学院
    private String m_id;//专业
    private String u_pwd;//密码
    private int u_type;//类型
    private int u_maxb;//
    private String s_name;
    private String u_lable;//标签
    private String strerr;
    private User u;
    private List<User> userList;
    private int borrow_id;   
    private String newLabel;
    private String delLabel;
    
    public int getBorrow_id() {
		return borrow_id;
	}
	public void setBorrow_id(int borrow_id) {
		this.borrow_id = borrow_id;
	}
	public String getNewLabel() {
		return newLabel;
	}
	public void setNewLabel(String newLabel) {
		this.newLabel = newLabel;
	}
	public String getDelLabel() {
		return delLabel;
	}
	public void setDelLabel(String delLabel) {
		this.delLabel = delLabel;
	}
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
    public String getS_name() {
		return s_name;
	}
	public void setS_name(String s_name) {
		this.s_name = s_name;
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
    public List<User> getUserList() {
		return userList;
	}
	public void setUserList(List<User> userList) {
		this.userList = userList;
	}
	
	public String Check() {
        String re = "";
        UserDAO dao = new UserDAO();
        u = dao.getById(u_id);  
        //System.out.println(user.getU_type() + "**********");
        if(dao.isValid(u)){       
            re = "loginok";
            strerr = "";
           }
        else{
            u = null;
            strerr = "<font color='red' size = '2'>登录失败</font>";
            re = "loginfail";
        }       
        return re;
    }
    
    public String showReader() {
    	UserDAO ud=new UserDAO() ;
    	userList=ud.getAllUser();
    	return "showReader";
    }

    public String addReader() {
    	UserDAO ud=new UserDAO();
    	u.setU_pwd("123");
    	ud.addUser(u);
    	return "addReader";
    }
    
    public String deleteReader() {
    	UserDAO ud=new UserDAO();
    	ud.deleteUser(u_id);
    	return "delete";
    }
    
    public String searchReader() {
    	UserDAO ud=new UserDAO();
    	ud.searchUser(s_name);
    	return "search";
    }
    
    public String renewBook() {
        String re = "renew";
        int time = 15;
        BookDAO dao = new BookDAO();
        dao.renewBook(borrow_id,time);    
        return re;
    } 
    
    public String addLabel() {
        String re = "addLabel";
        HttpSession session = ServletActionContext.getRequest().getSession();
        User u = (User) session.getAttribute("user");
        UserDAO dao = new UserDAO();
        dao.addLabel(u, newLabel);
        return re;
    }
    
    public String deleteLabel() {
        String re = "deleteLabel";
        HttpSession session = ServletActionContext.getRequest().getSession();
        User u = (User) session.getAttribute("user");
        UserDAO dao = new UserDAO();
        dao.deleteLabel(u, delLabel);
        return re;
    }
}
