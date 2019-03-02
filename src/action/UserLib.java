package action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import dao.BookCommentsDAO;
import dao.BookDAO;
import entity.BookCollect;
import entity.BookComments;
import entity.BorrowInformation;
import entity.*;
import entity.User;


public class UserLib {

    private List<BorrowInformation> Borrowlist;
    private List<BookCollect> Collectlist;
    private List<BookComments> Commentslist;
    private List<Label> labellist;
    private User u;
    private String strerr1;
    private String strerr2;
    private String strerr3;
    private String strerr4;
    
   
   
    public List<BorrowInformation> getBorrowlist() {
        return Borrowlist;
    }
    public void setBorrowlist(List<BorrowInformation> borrowlist) {
        Borrowlist = borrowlist;
    }
    public List<BookCollect> getCollectlist() {
        return Collectlist;
    }
    public void setCollectlist(List<BookCollect> collectlist) {
        Collectlist = collectlist;
    }
    
    public List<BookComments> getCommentslist() {
        return Commentslist;
    }
    public void setCommentslist(List<BookComments> commentslist) {
        Commentslist = commentslist;
    }
    public List<Label> getLabellist() {
        return labellist;
    }
    public void setLablelist(List<Label> labellist) {
        this.labellist = labellist;
    }
    public User getU() {
        return u;
    }
    public void setU(User u) {
        this.u = u;
    }   
    public String getStrerr1() {
        return strerr1;
    }
    public void setStrerr1(String strerr1) {
        this.strerr1 = strerr1;
    }
    public String getStrerr2() {
        return strerr2;
    }
    public void setStrerr2(String strerr2) {
        this.strerr2 = strerr2;
    }
    public String getStrerr3() {
        return strerr3;
    }
    public void setStrerr3(String strerr3) {
        this.strerr3 = strerr3;
    }    
    public String getStrerr4() {
        return strerr4;
    }
    public void setStrerr4(String strerr4) {
        this.strerr4 = strerr4;
    }
    
    public void getBorrowInformation() {
        BookDAO dao = new BookDAO();
        HttpSession session = ServletActionContext.getRequest().getSession();
        User u = (User) session.getAttribute("user");
        Borrowlist = dao.getBorrowInformation(u.getU_id());
        if(Borrowlist.isEmpty())
            strerr1 = "没有相关借阅记录"; 
        else
            strerr1 = "";
    }
    
   public void getBookCollect() {
        BookDAO dao = new BookDAO();
        HttpSession session = ServletActionContext.getRequest().getSession();
        User u = (User) session.getAttribute("user");
        Collectlist = dao.getBookCollect(u.getU_id());
        if(Collectlist.isEmpty())
            strerr2 = "没有相关收藏记录";     
        else
            strerr2 = "";
    }
    
    public void getBookComments() {        
        HttpSession session = ServletActionContext.getRequest().getSession();
        User u = (User) session.getAttribute("user");      
        BookCommentsDAO dao = new BookCommentsDAO();
        Commentslist = dao.getBookComments(u);
        if(Commentslist.isEmpty())
            strerr3 = "没有相关书评记录";        
        else
            strerr3 = "";
    }    
    
    public void getLabel() {        
        HttpSession session = ServletActionContext.getRequest().getSession();
        User u = (User) session.getAttribute("user");      
        String [] array = u.getU_lable().split("-");   
        labellist = new  ArrayList<Label>();
        if(array.length>0)
        {
            for (int i = 0; i < array.length; i++) {
                Label l = new Label(); 
                l.setLabel(array[i]);
                labellist.add(l);
            }
            strerr4 = "";
        }
        else
            strerr4 = "没有相关标签"; 
    }    
        
    public String showInformation() {
        String toshow = "toshow";
        getBorrowInformation();
        getBookCollect();
        getBookComments();  
        getLabel();
        return toshow;
    }
}
