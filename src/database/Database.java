package database;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class Database {
		private Connection conn = null;
		private String dbname = "library";
		private String username = "root";
		private String password = "20070623Jz";
		private void open(){	
			try {
				Class.forName("com.mysql.jdbc.Driver");
				String connstr = "jdbc:mysql://localhost:3306/" + dbname + "?useUnicode=true&characterEncoding=utf8";
				conn = DriverManager.getConnection(connstr, username, password);
			} catch (Exception e) {
				System.out.println(e.toString());
			}
		}
		
		public void close(){	
			try {
				if(!conn.isClosed()){
					conn.close();
				}
			} catch (SQLException e) {
				System.out.println(e.toString());
			}
			conn = null;
		}
		
		public ResultSet query(String sql){
			ResultSet rs = null;
			this.open();
			
			try {
				Statement stmt = conn.createStatement();
				rs = stmt.executeQuery(sql);
			} catch (SQLException e) {
				System.out.println(e.toString() + sql);
			}	
			
			return rs;
		}
		
		public int execuet(String sql){
			int re = -1;
			this.open();
			try {
				Statement stmt = conn.createStatement();
				re = stmt.executeUpdate(sql);
			} catch (SQLException e) {
				System.out.println(e.toString() + sql);
			}
			this.close();
			return re;
			
		}

}
