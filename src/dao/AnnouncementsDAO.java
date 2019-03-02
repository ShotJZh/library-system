package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import database.Database;
import entity.*;

public class AnnouncementsDAO {
	public List<Announcements> getAllAnn(){
		List<Announcements> list = new ArrayList<Announcements>();
		String sql = "select * from Announcement";
		Database db = new Database();
		ResultSet rs = db.query(sql);
		try {
			while (rs.next()) {
				Announcements ann=new Announcements();
				ann.setAnnounce_id(rs.getInt("announce_id"));
				ann.setAnnounce_date(rs.getDate("announce_date"));
				ann.setAnnounce_text(rs.getString("announce_text"));
				ann.setAnnounce_title(rs.getString("announce_title"));
				list.add(ann);
			}
			
		} catch (SQLException e) {
			System.out.println(e.toString());
		}
		return list;
	}

	public List<Announcements> searchAnn(String announce_title){
		List<Announcements> list = new ArrayList<Announcements>();
		String sql = "select * from Announcement where announce_title like '%"+announce_title+"%' order by announce_date";
		Database db = new Database();
		ResultSet rs = db.query(sql);
		try {
			while (rs.next()) {
				Announcements ann=new Announcements();
				ann.setAnnounce_id(rs.getInt("announce_id"));
				ann.setAnnounce_date(rs.getDate("announce_date"));
				ann.setAnnounce_text(rs.getString("announce_text"));
				ann.setAnnounce_title(rs.getString("announce_title"));
				list.add(ann);
			}
			
		} catch (SQLException e) {
			System.out.println(e.toString());
		}
		return list;
	}
	
	public boolean addAnn(Announcements ann) {
		boolean status=false;
		Database db=new Database();
		String sql="insert into announcement values('"+ann.getAnnounce_id()+"','"+ann.getAnnounce_date()+"','"
				+ann.getAnnounce_title()+"','"+ann.getAnnounce_text()+"','"+ann.getAnnounce_author()+"')";
		System.out.println(sql);
		int i=db.execuet(sql);
		System.out.println(sql);
		if(i>0)
			status=true;
		return status;
	}

	public int getLastID() {
		int i=0;
		Database db=new Database();
		String sql="select max(announce_id) as max from announcement";
		ResultSet rs = db.query(sql);
		try {
			if (rs.next()) {
				i=rs.getInt("max")+1;			
			}
			else
				i=1;
		} catch (SQLException e) {
			System.out.println(e.toString());
		}
		
		return i;
	}

	public boolean deleteAnnById(int announce_id) {
		boolean status = false;
		Database db = new Database();
		String sql = "select * from announcement where announce_id = '" + announce_id + "' ";
		ResultSet rs = db.query(sql);
		try {
			if (rs.next()) {
				status = true;
				String sql1 = "delete from announcement where announce_id = '" + announce_id + "'";
				db.execuet(sql1);
			}
		} catch (SQLException e) {
			System.out.println(e.toString());
		}
		return status;
	}

	public Announcements getAnnById(int id) {
		Announcements ann=new Announcements();
		String sql = "select * from Announcement where announce_id = "+id+" order by announce_date";
		Database db = new Database();
		ResultSet rs = db.query(sql);
		try {
			while (rs.next()) {				
				ann.setAnnounce_id(rs.getInt("announce_id"));
				ann.setAnnounce_date(rs.getDate("announce_date"));
				ann.setAnnounce_text(rs.getString("announce_text"));
				ann.setAnnounce_title(rs.getString("announce_title"));
			}
			
		} catch (SQLException e) {
			System.out.println(e.toString());
		}
		return ann;
	}
}
