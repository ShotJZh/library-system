package action;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

public class QuitAction {
	public String quit(){
		HttpSession session = ServletActionContext.getRequest().getSession();
		if(session.getAttribute("user")!=null)
		{
			session.removeAttribute("user");
			return "success";
		}
		return "fail";
	}
}
