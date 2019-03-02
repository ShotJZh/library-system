package action;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import dao.AdminDAO;
import dao.UserDAO;
import entity.*;

public class AdminLogin {
	 private Admin a;
	 
	 public Admin getA() {
		return a;
	}

	public void setA(Admin a) {
		this.a = a;
	}

	public String Check() {
	        String re = "";
	        AdminDAO dao = new AdminDAO();
	        Admin admin=new Admin();
	        admin.setA_id(a.getA_id());
	        admin.setA_pwd(a.getA_pwd());
	        System.out.println("工号"+a.getA_id());
	        System.out.println("密码"+a.getA_pwd());
	        if(dao.isValid(admin)){
	        	admin=dao.getById(a.getA_id());
	            HttpSession session = ServletActionContext.getRequest().getSession();
	            session.setAttribute("admin", admin);
	            re="loginsuccess";
	           }
	        else{
	            admin = null;
	            re = "loginfail";
	            
	            System.out.println("验证失败");
	        }       
	        return re;
	    }
}
