package entity;

import java.util.Date;

public class BookCollect {
    private String b_id;//书籍编号
    private String u_id;//用户编号
    private String b_name;//书名
    private String b_pic;//图片
    private String b_author;//作者
    private String b_location;//地点
    private Date collectDate;
    
    public String getB_id() {
        return b_id;
    }
    public void setB_id(String b_id) {
        this.b_id = b_id;
    }
    public String getU_id() {
        return u_id;
    }
    public void setU_id(String u_id) {
        this.u_id = u_id;
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
    public String getB_location() {
        return b_location;
    }
    public void setB_location(String b_location) {
        this.b_location = b_location;
    }
    public Date getCollectDate() {
        return collectDate;
    }
    public void setCollectDate(Date collectDate) {
        this.collectDate = collectDate;
    }
    
}
