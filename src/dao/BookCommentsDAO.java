package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.*;

import database.Database;
import entity.*;

public class BookCommentsDAO {
	public List<BookComments> getBookComments(User user){
		List<BookComments> list=new ArrayList<BookComments>();
		BookDAO dao=new BookDAO();
		Database db=new Database();
		String sql="select * from bookcomm where u_id='"+user.getU_id()+"'";
		ResultSet rs=db.query(sql);
		try {
			while(rs.next()){
			BookComments comm=new BookComments();
			comm.setUser(user);
			comm.setBook(dao.getById(rs.getString("b_id")));
			comm.setDate(rs.getDate("bcdate"));
			comm.setComments(rs.getString("comments"));			
			list.add(comm);
			}
			db.close();
		} catch (SQLException e) {
			System.out.println(e.toString());
		}
		return list;
	}
	
	public List<BookComments> getBookComments(Book book){
		List<BookComments> list=new ArrayList<BookComments>();
		UserDAO dao=new UserDAO();
		Database db=new Database();
		String sql="select * from bookcomm where b_id='"+book.getB_id()+"'";
		ResultSet rs=db.query(sql);
		try {
			while(rs.next()){
				BookComments comm=new BookComments();
				comm.setUser(dao.getById(rs.getString("u_id")));
				comm.setBook(book);
				comm.setDate(rs.getDate("bcdate"));
				comm.setComments(rs.getString("comments"));			
				list.add(comm);
			}
			db.close();
		} catch (SQLException e) {
			System.out.println(e.toString());
		}
		return list;
	}
	
	public void addBookComments(User user,Book book,String comments){
		Database db=new Database();
		Date date=new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		String sql="insert into bookcomm values('"+user.getU_id()+"','"+book.getB_id()+"','"+sdf.format(date)+"','"+comments+"') ";
		db.execuet(sql);		
	}
	
	public void deleteBookComments(User user,Book book){
		Database db=new Database();
		String sql="delete from bookcomm where u_id='"+user.getU_id()+"' and b_id='"+book.getB_id()+"'";
		db.execuet(sql);	
	}
	
	public void updateBookComments(User user,Book book,String comments){
		Database db=new Database();
		Date date=new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		String sql="update bookcomm set comments='"+comments+"',bcdate='"+sdf.format(date)+"' where u_id='"+user.getU_id()+"' and b_id='"+book.getB_id()+"'";
		db.execuet(sql);
	}
}
