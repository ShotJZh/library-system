package action;

import entity.*;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

import dao.*;

public class AnnounceAction extends ActionSupport{
	private Announcements ann;
	private String announce_title;
	private String announce_text;
	private String s_announce_title;
	private int announce_id;
	private List<Announcements> annList;
	private int[] deleteID=new int[] {};
	
	public Announcements getAnn() {
		return ann;
	}
	public void setAnn(Announcements ann) {
		this.ann = ann;
	}
	public String getAnnounce_title() {
		return announce_title;
	}
	public void setAnnounce_title(String announce_title) {
		this.announce_title = announce_title;
	}
	public String getAnnounce_text() {
		return announce_text;
	}
	public void setAnnounce_text(String announce_text) {
		this.announce_text = announce_text;
	}
	public List<Announcements> getAnnList() {
		return annList;
	}
	public void setAnnList(List<Announcements> annList) {
		this.annList = annList;
	}
	public int getAnnounce_id() {
		return announce_id;
	}
	public void setAnnounce_id(int announce_id) {
		this.announce_id = announce_id;
	}
	public String getS_announce_title() {
		return s_announce_title;
	}
	public void setS_announce_title(String s_announce_title) {
		this.s_announce_title = s_announce_title;
	}
	public int[] getDeleteID() {
		return deleteID;
	}
	public void setDeleteID(int[] deleteID) {
		this.deleteID = deleteID;
	}
	
	public String showAllAnn() {
		AnnouncementsDAO ad=new AnnouncementsDAO();
		annList=ad.getAllAnn();
		return "show";
	}
	public String addAnn() {
		AnnouncementsDAO ad=new AnnouncementsDAO();
		Date nowDate=new Date();
		System.out.println(ad.getLastID());
		ann.setAnnounce_date(new java.sql.Date(nowDate.getTime()));
		ann.setAnnounce_id(ad.getLastID());
		ad.addAnn(ann);
		return "addAnn";
	}
	public String deleteAnn() {
		AnnouncementsDAO ad=new AnnouncementsDAO();
		ad.deleteAnnById(announce_id);
		return "deleteAnn";
	}
	public String deleteSelectAnn() {
		AnnouncementsDAO ad=new AnnouncementsDAO();
		HttpServletRequest q=ServletActionContext.getRequest();  
	    String id[]=q.getParameterValues("deleteID");  
		for(int i=0;i<id.length;i++)
		{
			System.out.println(id[i]);
		}
		//ad.deleteAnnById(announce_id);
		return "deleteSelectAnn";
	}
	public String searchAnn() {
		AnnouncementsDAO ad=new AnnouncementsDAO();
		ad.searchAnn(s_announce_title);
		return "searchAnn";
	}

}
