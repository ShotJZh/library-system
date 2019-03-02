package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.*;
import org.apache.commons.lang3.StringUtils;
import database.Database;
import entity.*;


public class UserDAO {
	public boolean isValid(User u)
	{
		boolean status = false;
		if(u == null)
			status = false;
		else
		{
			Database db = new Database();
			String sql ="select u_pwd from users where u_id = '" + u.getU_id() + "' ";  
			System.out.println(sql);
			ResultSet rs = db.query(sql);
			
			try 
			{
				if(rs.next())
				{	
					String password = rs.getString("u_pwd");
					System.out.println(password);
					if((password!=null) && password.equals(u.getU_pwd())) 
					{
						status  = true;
					}
				}
				//System.out.println(rs.next());
			}
			catch(SQLException e)
			{
				System.out.println(e.toString() + sql);
			}
		}
		//System.out.println(status);
		return status;
	}
	
	public User getById(String u_id)
	{
		User u = null;
		if(u_id.equals(""))
			return null;
		else
		{
			Database db = new Database();
			String sql ="select * from users where u_id = '" + u_id + "' ";  
			ResultSet rs = db.query(sql);
			try {
				if(rs.next()){	
					u = new User();				
					u.setU_id(rs.getString("u_id"));				
					u.setU_name(rs.getString("u_name"));
					u.setU_grade(rs.getString("u_grade"));
					u.setF_id(rs.getString("f_id"));
					u.setM_id(rs.getString("m_id"));
					u.setU_type(rs.getInt("u_type"));
					u.setU_maxb(rs.getInt("u_maxb"));					
					u.setU_lable(rs.getString("u_lable"));
					u.setU_pwd(rs.getString("u_pwd"));
				}
				db.close();
			} catch (SQLException e) {
				System.out.println(e.toString());
			}
		}
		return u;
    }
	
	public boolean setRecommend(String u_id,String b_id,String reason,String f_id,String m_id,String grade){
		boolean result=false;
		String sql;
		Date date=new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		sql="insert into teacherrecommend values('"+u_id+"','"+b_id+"','"+sdf.format(date)+"','"+grade+"','"+f_id+"','"+m_id+"','"+reason+"');";
		Database db=new Database();
		if(db.execuet(sql)==1)
			result=true;
		return result;
	}
	
	public List<TeacherRecommend> getRecommend(User user){
		List<TeacherRecommend> list=new ArrayList<TeacherRecommend>();
		BookDAO b_dao=new BookDAO();
		
		User teacher;
		Book book;
		String sql="select u_id,b_id,reco_date from teacherrecommend "
				+ "where (u_grade='_all' or u_grade='"+user.getU_grade()+"') and (f_id='al' or f_id='"+user.getF_id()+"') and (m_id='al' or m_id='"+user.getM_id()+"') order by reco_date desc;";
		Database db=new Database();
		ResultSet rs=db.query(sql);
		try {
			while(rs.next()){
			TeacherRecommend tr=new TeacherRecommend();	
			teacher=this.getById(rs.getString("u_id"));
			book=b_dao.getById(rs.getString("b_id"));
			tr.setRecommendDate(rs.getDate("reco_date"));
			tr.setTeacher(teacher);
			tr.setrBook(book);
			list.add(tr);
			}
			db.close();
		} catch (SQLException e) {
			System.out.println(e.toString());
		}
		return list;
	}
	
	public boolean deleteUser(String u_id)
	{
		boolean status = false;
		if(u_id.equals(""))
			status = false;
		else
		{
			Database db = new Database();
			String sql = "select * from Users where u_id = '" + u_id + "' ";  
			ResultSet rs = db.query(sql);
			try {
				if(rs.next()){	
					String sql1 = "delete from Users where u_id = '" + u_id + "' ";
					db.execuet(sql1);
					System.out.println(sql1);
					status = true;	
				}
			} catch (SQLException e) {
				System.out.println(e.toString());
			}
		}
		return status;
	}
	
	public boolean addUser(User u)
	{
		boolean status = false;
		if(u.getU_id().equals(""))
			status = false;
		else
		{
			Database db = new Database();
			String sql = "select * from Users where u_id = '" + u.getU_id() + "' ";  
			ResultSet rs = db.query(sql);
			try {
				if(rs.next()){						
					status = false;	
                }
                else{
                    String sql1 = "Insert into Users values('" + u.getU_id() + "','" + u.getU_name() + "','" + u.getU_grade() + "','" + u.getF_id() + "','" + u.getM_id() + "','" + u.getU_pwd() + "', " + u.getU_type() + "," +u.getU_maxb() + ",'" + u.getU_lable() + "')";
                    db.execuet(sql1);
                    System.out.println(sql);
                    System.out.println(sql1);
                    status = true;
                }
				//db.close();
			} catch (SQLException e) {
				System.out.println(e.toString());
			}
		}
		return status;
    }

    public boolean updateUser(User u)
	{
		boolean status = false;
		if(u.getU_id().equals(""))
			status = false;
		else
		{
			Database db = new Database();
			String sql = "select * from Users where u_id = '" + u.getU_id() + "' ";  
			ResultSet rs = db.query(sql);
			try {
				if(rs.next()){						
                    String sql1 = "update Users set u_id = '" + u.getU_id() + "', u_name = '" + u.getU_name() + "', u_grade = '" + u.getU_grade() + "', f_id = '" + u.getF_id() + "', m_id = '" + u.getM_id() + "', u_pwd = '" + u.getU_pwd() + "', u_type = " + u.getU_type() + ", u_maxb = " +u.getU_maxb() + ", u_lable = '" + u.getU_lable() + "'";
                    db.execuet(sql1);
                    status = true;	
                }
                else{
                    status = false;
                }
				db.close();
			} catch (SQLException e) {
				System.out.println(e.toString());
			}
		}
		return status;
    }
	
	public boolean addLabel(User user,String newLabel){
		boolean result=false;
		String oldLabel=user.getU_lable();
		if(oldLabel==null)
		{
			oldLabel=newLabel;
			result=true;
		}
		else {
			String label[]=oldLabel.split("-");
			for(int i=0;i<label.length;i++)
				if(label[i].equals(newLabel)) 
					return false;
			oldLabel=oldLabel+"-"+newLabel;
			result=true;
		}
		if(result){
			user.setU_lable(oldLabel);
			this.updateUser(user);
		}
		return result;
	}
	
	public void deleteLabel(User user,String delLabel){
		String oldLabel=user.getU_lable();
		user.setU_lable(null);
		String label[]=oldLabel.split("-");
		String dellabel[]=delLabel.split("-");
		
		String[] result_minus = substract(label, dellabel); 
		String Label = StringUtils.join(result_minus, "-");
		user.setU_lable(Label);
		this.updateUser(user);
	}
	
	public static String[] substract(String[] arr1, String[] arr2) {   
        LinkedList<String> list = new LinkedList<String>();   
        for (String str : arr1) {   
            if(!list.contains(str)) {   
                list.add(str);   
            }   
        }   
        for (String str : arr2) {   
            if (list.contains(str)) {   
                list.remove(str);   
            } 
        }   
        String[] result = {};   
        return list.toArray(result);   
    }  
	
	public List<Book> labelRecommend(User user){
		List<Book> finalList=new ArrayList<Book>();
		String labelStr=user.getU_lable();
		String label[]=labelStr.split("-");
		BookDAO b_dao=new BookDAO();
		for(int i=0;i<label.length;i++)
			finalList.add(b_dao.searchBook(label[i]).get(0));
		int i=0,k=0;
		int size=finalList.size();
		while(finalList.size()<6)
		{
			Book book=b_dao.getSameType(finalList.get(i%size).getB_type()).get(k);
			finalList.add(book);
			i++;
			if(i%size==0)
				k++;
		}
		return finalList;
	}
	
	public List<User> getAllUser(){
		List<User> list=new ArrayList<User>();

		String sql="select u_id,u_name,u_grade,f_id,m_id from Users";
				
		Database db=new Database();
		ResultSet rs=db.query(sql);
		try {
			while(rs.next()){
			User u=new User();
			u.setU_id(rs.getString("u_id"));
			u.setU_name(rs.getString("u_name"));
			u.setU_grade(rs.getString("u_grade"));
			u.setF_id(rs.getString("f_id"));
			u.setM_id(rs.getString("m_id"));
			list.add(u);
			}
			db.close();
		} catch (SQLException e) {
			System.out.println(e.toString());
		}
		return list;
	}
	
	public List<User> searchUser(String u_name){
		List<User> list=new ArrayList<User>();

		String sql="select * from Users where u_name like '%"+u_name+"%'";
			
		System.out.println(sql);
		
		Database db=new Database();
		ResultSet rs=db.query(sql);
		try {
			while(rs.next()){
			User u=new User();
			u.setU_id(rs.getString("u_id"));
			u.setU_name(rs.getString("u_name"));
			u.setU_grade(rs.getString("u_grade"));
			u.setF_id(rs.getString("f_id"));
			u.setM_id(rs.getString("m_id"));
			list.add(u);
			}
			db.close();
		} catch (SQLException e) {
			System.out.println(e.toString());
		}
		return list;
	}
	
	public Author getAuthor(String a_name){
		Database db=new Database();
		String sql="select * from author where a_name='"+a_name+"';";
		ResultSet rs=db.query(sql);
		try{
			if(rs.next()){
				Author au=new Author();
				au.setA_name(rs.getString("a_name"));
				au.setA_profile(rs.getString("a_profile"));
				return au;
			}
		}catch (SQLException e) {
			System.out.println(e.toString());
		}
		return null;
	}
}