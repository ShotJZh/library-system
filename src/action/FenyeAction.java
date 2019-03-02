package action;

import java.util.*;

import com.opensymphony.xwork2.ActionContext;

import dao.*;
import entity.*;


public class FenyeAction {
	private int pageNow=1;           //初始页为第一页  
    private int pageSize=5;          //每页数据为4条，可调节  
      
    public String execute() throws Exception{  
        BookDAO dao = new BookDAO();  
        List list = dao.selectBook(pageNow, pageSize);  
        Pager page = new Pager(pageNow, dao.getSize());  
          
        Map session = ActionContext.getContext().getSession();  
        session.put("bookinfo", list);  
        session.put("pageinfo", page);  
        return "success";  
          
    }  

    public int getPageNow() {  
        return pageNow;  
    }  

    public void setPageNow(int pageNow) {  
        this.pageNow = pageNow;  
    }  

    public int getPageSize() {  
        return pageSize;  
    }  

    public void setPageSize(int pageSize) {  
        this.pageSize = pageSize;  
    }  
      
}  
