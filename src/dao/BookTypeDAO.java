package dao;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import database.Database;
import entity.*;

public class BookTypeDAO {
	public List<BookType> getBookTypelist(){
		List<BookType> list=new ArrayList<BookType>();
		String sql="select * from booktype";
		Database db=new Database();
		ResultSet rs = db.query(sql);
		try {
			while (rs.next()) {
				BookType b = new BookType();
				b.setType_id(rs.getString("bt_id"));
				b.setType_name(rs.getString("bt_name"));
				System.out.println(rs.getString("bt_id"));
				System.out.println(rs.getString("bt_name"));
				list.add(b);
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		return list;
	}
}
