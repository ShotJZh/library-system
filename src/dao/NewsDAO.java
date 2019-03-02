package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import database.Database;
import entity.News;
import entity.User;

public class NewsDAO {
	public List<News> getNews(User user){
		List<News> list=new ArrayList<News>();
		
		String sql = "select * from news;";
		//String sql = "select * from news where m_id='"+user.getM_id()+"'";
		Database db = new Database();
		ResultSet rs= db.query(sql);
		try {
			while(rs.next()){				
				News news=new News();
				news.setM_id(rs.getString("m_id"));
				news.setN_abstract(rs.getString("n_abstract"));
				news.setN_date(rs.getDate("n_date"));
				news.setN_title(rs.getString("n_title"));
				news.setN_link(rs.getString("n_link"));
				news.setN_pic(rs.getString("n_pic"));
				list.add(news);
			}
			db.close();
		} catch (SQLException e) {
		    System.out.println(e.toString());
		}
		return list;		
	}
}
