package dao;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.*;

import database.Database;
import entity.*;
public class BorrowInformationDAO {
	public List<BorrowInformation> getBorrowInformation(String u_id) {
        List<BorrowInformation> list = new ArrayList<BorrowInformation>();
        String sql = "select book.*,borrowinfo.borrowDate,borrowinfo.returnDate from book inner join borrowinfo on book.b_id = borrowinfo.b_id where borrowinfo.u_id = '" + u_id + "'";
        Database db = new Database();
        ResultSet rs = db.query(sql);
        try {
            while (rs.next()) {
                BorrowInformation bi = new BorrowInformation();
                bi.setBorrowDate(rs.getDate("borrowDate"));
                bi.setReturnDate(rs.getDate("returnDate"));
                bi.setB_name(rs.getString("b_name"));
                bi.setB_pic(rs.getString("b_pic"));
                bi.setB_author(rs.getString("b_au"));
                bi.setB_location(rs.getString("b_location"));
                list.add(bi);
            }
            db.close();
        } catch (SQLException e) {
            System.out.println(e.toString());
        }
        return list;
    }
}
