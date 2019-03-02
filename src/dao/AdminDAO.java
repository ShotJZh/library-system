package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import database.Database;
import entity.Book;
import entity.Admin;

public class AdminDAO {
	public boolean isValid(Admin a)
	{
		boolean status = false;
		if(a == null)
			status = false;
		else
		{
				Database db = new Database();
				String sql ="select a_pwd from Admin where a_id = '" + a.getA_id() + "' ";  
				System.out.println(sql);
				ResultSet rs = db.query(sql);
				try 
				{
					if(rs.next())
					{	
						String password = rs.getString("a_pwd");
						System.out.println(rs.getString("a_pwd"));
						if((!password.equals("")) && password.equals(a.getA_pwd())) 
						{
							status  = true;
						}
					}
				}
				catch(SQLException e)
				{
					System.out.println(e.toString() + sql);
				}
		}
		return status;
	}
	
	public Admin getById(String a_id)
	{
		Admin a = null;
		if(a_id == "")
			return null;
		else
		{
			Database db = new Database();
    		String sql ="select * from Admin where a_id = '" + a_id + "' ";  
    		ResultSet rs = db.query(sql);
    		try {
    			if(rs.next()){	
    				a = new Admin();
    				a.setA_id(rs.getString("a_id"));
    				a.setA_name(rs.getString("a_name"));    		
    			}
    			//db.close();
    		} catch (SQLException e) {
    			System.out.println(e.toString());
    		}
		}
		return a;
	}
	

}
