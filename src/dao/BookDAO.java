package dao;

import java.io.UnsupportedEncodingException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.List;

import database.Database;
import entity.Author;
import entity.Book;
import entity.BookCollect;
import entity.BookType;
import entity.BorrowInformation;

public class BookDAO {

	public Book getById(String id) {
		Book book = null;
		String sql = "select * from Book where b_id = '" + id + "'";

		Database db = new Database();
		ResultSet rs = db.query(sql);
		try {
			if (rs.next()) {
				book = new Book();
				book.setB_id(rs.getString("b_id"));
				book.setB_name(rs.getString("b_name"));
				book.setB_author(rs.getString("b_au"));
				book.setB_press(rs.getString("b_press"));
				book.setB_location(rs.getString("b_location"));
				if(rs.getString("b_pic")==null)
					book.setB_pic("images/book/noimage.jpg");
				else
					book.setB_pic(rs.getString("b_pic"));
				book.setB_in(Integer.parseInt(rs.getString("b_in")));
				book.setB_out(Integer.parseInt(rs.getString("b_out")));
				book.setB_borrowtimes(Integer.parseInt(rs.getString("b_borrowtimes")));
				book.setB_addtime(rs.getTime("b_addtime"));
				book.setB_type(rs.getString("b_type1"));
				if(rs.getString("b_description")==null)
					book.setB_description("暂无该书的介绍");
				else
					book.setB_description(rs.getString("b_description"));
			}
			
		} catch (SQLException e) {
			System.out.println(e.toString());
		}
		return book;
	}

	public boolean addBook(Book b) {
		boolean status = false;
		if (b.getB_id() == "")
			status = false;
		else {
			Database db = new Database();
			String sql = "select * from Book where b_id = '" + b.getB_id() + "' ";
			ResultSet rs = db.query(sql);
			try {
				if (rs.next()) {
					db.close();
					status = false;
				} else {
					String sql1 = "insert into Book(b_id,b_name,b_pic,b_au,b_press,b_location,b_in,b_out,b_borrowtimes,b_addtime,b_type1) "
							+ "values ( '" + b.getB_id() + "','" + b.getB_name() + "','"
							+ b.getB_pic() + "','" + b.getB_author() + "','" + b.getB_press() + "','"
							+ b.getB_location() + "','" + b.getB_in() + "','" + b.getB_out() + "',"
							+ b.getB_borrowtimes() + ",'" + b.getB_addtime() + "','" + b.getB_type() + "')";
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

	public boolean updateBook(Book b) {
		boolean status = false;
		if (b.getB_id() == "")
			status = false;
		else {
			Database db = new Database();
			String sql = "select * from Book where b_id = '" + b.getB_id() + "' ";
			ResultSet rs = db.query(sql);
			try {
				if (rs.next()) {
					status = true;
					String sql1 = "update Book set  b_name = '" + b.getB_name() + "' , b_au = '" + b.getB_author() + "' , b_press = '" + b.getB_press()
							+ "' , b_location = '" + b.getB_location() + "' where b_id = '" + b.getB_id() + "'";
					System.out.println(sql1);
					db.execuet(sql1);
				}
				//db.close();
			} catch (SQLException e) {
				System.out.println(e.toString());
			}
		}
		return status;
	}

	public boolean deleteBookById(String b_id) {
		boolean status = false;
		if (b_id == "")
			status = false;
		else {
			Database db = new Database();
			String sql = "select * from Book where b_id = '" + b_id + "' ";
			ResultSet rs = db.query(sql);
			try {
				if (rs.next()) {
					status = true;
					String sql1 = "delete from Book where b_id = '" + b_id + "'";
					db.execuet(sql1);
				}
				//db.close();
			} catch (SQLException e) {
				System.out.println(e.toString());
			}
		}
		return status;
	}

	public List<Book> searchBook(String key) {
		List<Book> booklist = new ArrayList<Book>();		
		String sql = "select * from Book where b_name like '%" + key + "%' or b_au like '%" + key
				+ "%' order by b_borrowtimes;";
		//System.out.println(sql);
		Database db = new Database();
		ResultSet rs = db.query(sql);
		try {
			//int count = 0;
			while (rs.next()) {
				//count++;
				Book book = new Book();
				book.setB_id(rs.getString("b_id"));
				book.setB_name(rs.getString("b_name"));
				book.setB_author(rs.getString("b_au"));
				book.setB_press(rs.getString("b_press"));
				book.setB_location(rs.getString("b_location"));
				if(rs.getString("b_pic")==null)
					book.setB_pic("images/book/noimage.jpg");
				else
					book.setB_pic(rs.getString("b_pic"));
				book.setB_in(Integer.parseInt(rs.getString("b_in")));
				book.setB_out(Integer.parseInt(rs.getString("b_out")));
				book.setB_borrowtimes(Integer.parseInt(rs.getString("b_borrowtimes")));
				book.setB_addtime(rs.getTime("b_addtime"));
				book.setB_type(rs.getString("b_type1"));
				if(rs.getString("b_description")==null)
					book.setB_description("暂无该书的介绍");
				else
					book.setB_description(rs.getString("b_description"));
				booklist.add(book);
				
			}
			//System.out.println("Record Count: "+count);
			//db.close();
		} catch (SQLException e) {
			System.out.println(e.toString());
		}
		return booklist;
	}

	public List<Book> getSameType(String type) {
		List<Book> list = new ArrayList<Book>();
		String sql = "select * from book where b_type1='" + type + "' order by b_borrowtimes desc";
		Database db = new Database();
		ResultSet rs = db.query(sql);
		try {
			while (rs.next()) {
				Book book = new Book();
				book.setB_id(rs.getString("b_id"));
				book.setB_name(rs.getString("b_name"));
				book.setB_author(rs.getString("b_au"));
				book.setB_press(rs.getString("b_press"));
				book.setB_location(rs.getString("b_location"));
				if(rs.getString("b_pic")==null)
					book.setB_pic("images/book/noimage.jpg");
				else
					book.setB_pic(rs.getString("b_pic"));
				book.setB_in(Integer.parseInt(rs.getString("b_in")));
				book.setB_out(Integer.parseInt(rs.getString("b_out")));
				book.setB_borrowtimes(Integer.parseInt(rs.getString("b_borrowtimes")));
				book.setB_addtime(rs.getTime("b_addtime"));
				book.setB_type(rs.getString("b_type1"));
				if(rs.getString("b_description")==null)
					book.setB_description("暂无该书的介绍");
				else
					book.setB_description(rs.getString("b_description"));
				list.add(book);
			}
			//db.close();
		} catch (SQLException e) {
			System.out.println(e.toString());
		}
		return list;
	}

	public void collectBook(String b_id, String u_id) {
		Database db = new Database();
		String sql = "Insert into BookCollect values ('" + b_id + "','" + u_id + "' )";
		db.execuet(sql);
	}

	public void cancelCollectBook(String b_id, String u_id) {
		Database db = new Database();
		String sql = "delete from BookCollect where b_id = '" + b_id + "', u_id = '" + u_id + "'";
		db.execuet(sql);
	}

	public List<Book> getNewBook() {
		List<Book> list = new ArrayList<Book>();
		String sql = "select * from book order by b_addtime desc";
		Database db = new Database();
		ResultSet rs = db.query(sql);
		int i = 0;
		try {
			while (rs.next()) {
				Book book = new Book();
				book.setB_id(rs.getString("b_id"));
				book.setB_name(rs.getString("b_name"));
				book.setB_author(rs.getString("b_au"));
				book.setB_press(rs.getString("b_press"));
				book.setB_location(rs.getString("b_location"));
				if(rs.getString("b_pic")==null)
					book.setB_pic("images/book/noimage.jpg");
				else
					book.setB_pic(rs.getString("b_pic"));
				book.setB_in(Integer.parseInt(rs.getString("b_in")));
				book.setB_out(Integer.parseInt(rs.getString("b_out")));
				book.setB_borrowtimes(Integer.parseInt(rs.getString("b_borrowtimes")));
				book.setB_addtime(rs.getTime("b_addtime"));
				book.setB_type(rs.getString("b_type1"));
				if(rs.getString("b_description")==null)
					book.setB_description("暂无该书的介绍");
				else
					book.setB_description(rs.getString("b_description"));
				list.add(book);
				i++;
				if (i == 4)
					break;
			}
			db.close();
		} catch (SQLException e) {
			System.out.println(e.toString());
		}
		return list;
	}

	public List<Book> getPopularBook() {
		List<Book> list = new ArrayList<Book>();
		String sql = "select * from book order by b_borrowtimes desc";
		Database db = new Database();
		ResultSet rs = db.query(sql);
		int i = 0;
		try {
			while (rs.next()) {
				Book book = new Book();
				book.setB_id(rs.getString("b_id"));
				book.setB_name(rs.getString("b_name"));
				book.setB_author(rs.getString("b_au"));
				book.setB_press(rs.getString("b_press"));
				book.setB_location(rs.getString("b_location"));
				if(rs.getString("b_pic")==null)
					book.setB_pic("images/book/noimage.jpg");
				else
					book.setB_pic(rs.getString("b_pic"));
				book.setB_in(Integer.parseInt(rs.getString("b_in")));
				book.setB_out(Integer.parseInt(rs.getString("b_out")));
				book.setB_borrowtimes(Integer.parseInt(rs.getString("b_borrowtimes")));
				book.setB_addtime(rs.getTime("b_addtime"));
				book.setB_type(rs.getString("b_type1"));
				if(rs.getString("b_description")==null)
					book.setB_description("暂无该书的介绍");
				else
					book.setB_description(rs.getString("b_description"));
				list.add(book);
				i++;
				if (i == 4)
					break;
			}
			db.close();
		} catch (SQLException e) {
			System.out.println(e.toString());
		}
		return list;
	}
	
	public List<BookCollect> getBookCollect(String u_id) {
        List<BookCollect> list = new ArrayList<BookCollect>();
        String sql = "select book.* from book inner join bookcollect on book.b_id = bookcollect.b_id where bookcollect.u_id = '" + u_id + "'";
        Database db = new Database();
        ResultSet rs = db.query(sql);
        try {
            while (rs.next()) {
                BookCollect bc = new  BookCollect();                             
                bc.setB_name(rs.getString("b_name"));
                bc.setB_pic(rs.getString("b_pic"));
                bc.setB_author(rs.getString("b_au"));
                bc.setB_location(rs.getString("b_location"));
                list.add(bc);
            }
            db.close();
        } catch (SQLException e) {
            System.out.println(e.toString());
        }
        return list;
    }

	public List<Book> getAllBook(){
		List<Book> list = new ArrayList<Book>();
		String sql = "select * from book";
		Database db = new Database();
		ResultSet rs = db.query(sql);
		try {
			while (rs.next()) {
				Book b = new Book();
				b.setB_id(rs.getString("b_id"));
				b.setB_name(rs.getString("b_name"));
				if(rs.getString("b_pic")==null)
					b.setB_pic("images/book/noimage.jpg");
				else
					b.setB_pic(rs.getString("b_pic"));
				b.setB_author(rs.getString("b_au"));
				b.setB_press(rs.getString("b_press"));
				b.setB_location(rs.getString("b_location"));
				b.setB_in(rs.getInt("b_in"));
				b.setB_out(rs.getInt("b_out"));
				b.setB_borrowtimes(rs.getInt("b_borrowtimes"));
				b.setB_addtime(rs.getTime("b_addtime"));
				b.setB_type(rs.getString("b_type1"));
				list.add(b);
			}
			db.close();
		} catch (SQLException e) {
			System.out.println(e.toString());
		}
		return list;
	}

	public int getSize() {
		String sql="select count(*) from book";
		Database db=new Database();
		ResultSet rs=db.query(sql);
		try {
			if(rs.next()) {
				int pagecount=rs.getInt(1);
				return pagecount;
			}
			return 0;
		}catch(Exception e) {
			e.printStackTrace();
			return 0;
		}
	}

	public List<Book> selectBook(int pageNow,int pageSize) {
		List<Book> list=new ArrayList<Book>();
		Database db=new Database();
		String sql="select * from book order by b_id limit "+ (pageSize*(pageNow-1))+","+ pageSize;
		System.out.println(sql);
		ResultSet rs=db.query(sql);
		try {
			while (rs.next()) {
				Book b = new Book();
				b.setB_id(rs.getString("b_id"));
				b.setB_name(rs.getString("b_name"));
				if(rs.getString("b_pic")==null)
					b.setB_pic("images/book/noimage.jpg");
				else
					b.setB_pic(rs.getString("b_pic"));
				b.setB_author(rs.getString("b_au"));
				b.setB_press(rs.getString("b_press"));
				b.setB_location(rs.getString("b_location"));
				b.setB_in(rs.getInt("b_in"));
				b.setB_out(rs.getInt("b_out"));
				b.setB_borrowtimes(rs.getInt("b_borrowtimes"));
				b.setB_addtime(rs.getTime("b_addtime"));
				b.setB_type(rs.getString("b_type1"));
				list.add(b);
			}
			db.close();
		} catch (SQLException e) {
			System.out.println(e.toString());
		}
		return list;
	}

	public List<Book> getBuyList(){
		List<Book> list = new ArrayList<Book>();
		Database db = new Database();
		String sql="select *,b_out-b_in as s from book where b_in<5 and b_out>b_in order by s desc;";
		ResultSet rs = db.query(sql);
		try{
			while(rs.next()){
				Book b=new Book();
				b.setB_id(rs.getString("b_id"));
				b.setB_name(rs.getString("b_name"));
				b.setB_in(rs.getInt("b_in"));
				b.setB_out(-rs.getInt("b_out"));
				list.add(b);
			}
			db.close();
		} catch (SQLException e) {
			System.out.println(e.toString());
	}
		return list;
	}

	public List<BookType> getTypeSumList(){//获取每类图书的总量
		List<BookType> list = new ArrayList<BookType>();
		Database db = new Database();
		String sql="select bt_name,sum(b_in+b_out) as snum,sum(b_in) as sumB_in,sum(b_out) as sumB_out"
				+ " from book inner join booktype on b_type1=bt_id group by bt_name order by snum desc;";
		ResultSet rs = db.query(sql);
		try{
			while(rs.next()){
				BookType b=new BookType();	
				b.setType_name(rs.getString("bt_name"));
				b.setType_in(rs.getInt("sumB_in"));
				b.setType_out(rs.getInt("sumB_out"));
				b.setType_sum(rs.getInt("snum"));
				list.add(b);
			}
			db.close();
		} catch (SQLException e) {
			System.out.println(e.toString());
	}
		return list;
	}
	
	public List<Book> getTypeBorrowtimesList(){
		List<Book> list = new ArrayList<Book>();
		Database db = new Database();
		String sql="select bt_name,sum(b_borrowtimes)/sum(b_in+b_out) as snum from book inner join booktype on b_type1=bt_id group by bt_name order by snum desc;";
		ResultSet rs = db.query(sql);
		try{
			while(rs.next()){
				Book b=new Book();				
				b.setB_name(rs.getString("bt_name"));
				b.setB_type(rs.getString("snum"));				
				list.add(b);
			}
			db.close();
		} catch (SQLException e) {
			System.out.println(e.toString());
	}
		return list;
	}
	
	public List<Book> getOldBookList(){
		List<Book> list = new ArrayList<Book>();
		Database db = new Database();
		String sql="select b_name as name,YEAR(borrowdate) as year,count(*) as number "
				+ "from borrowinfo inner join book "
				+ " on borrowinfo.b_id=book.b_id "
				+ "where (b_out=0) and (DATE_FORMAT(NOW(), '%Y')-YEAR(b_addtime)>=4) "
				+ "group by b_name,YEAR(borrowdate) order by b_borrowtimes,YEAR(borrowdate) desc;";
		System.out.println(sql);
		ResultSet rs = db.query(sql);
		try{
			while(rs.next()){
				Book b=new Book();				
				b.setB_name(rs.getString("name"));
				b.setB_in(rs.getInt("year"));
				b.setB_borrowtimes(rs.getInt("number"));
				list.add(b);
			}
			db.close();
		} catch (SQLException e) {
			System.out.println(e.toString());
	}
		return list;
	}

	public List<Book> getSimilarBook(List<Book> searchList){
		List<Book> list = new ArrayList<Book>();
		if(searchList.size()==0)
			return list;
		Database db = new Database();
		for(int i=0;i<4;i++){
			Book book=searchList.get(i%searchList.size());
			String sql = "select b_id,b_name,b_au,b_pic,b_type1 from book where b_type1='"+book.getB_type()+"' order by b_value desc";			
			ResultSet rs = db.query(sql);			
			try {
				while (rs.next()){
					Book b = new Book();
					b.setB_id(rs.getString("b_id"));
					b.setB_name(rs.getString("b_name"));
					if(rs.getString("b_pic")==null)
						b.setB_pic("images/book/noimage.jpg");
					else
						b.setB_pic(rs.getString("b_pic"));
					b.setB_author(rs.getString("b_au"));
					b.setB_type(rs.getString("b_type1"));
					if((!this.inList(searchList, b))&&(!this.inList(list, b)))
					{
						list.add(b);
						break;
					}
				}
				db.close();
			} catch (SQLException e) {
				System.out.println(e.toString());
			}
		}		
		return list;
	}

	private boolean inList(List<Book> list,Book book){
		for(int i=0;i<list.size();i++)
		{
			if(list.get(i).getB_id().equals(book.getB_id()))
				return true;
		}
		return false;
	}
	
	public List<BorrowInformation> getBorrowInformation(String u_id) {
        List<BorrowInformation> list = new ArrayList<BorrowInformation>();
        String sql = "select book.*,borrowinfo.borrow_id,latestReturnDate,borrowinfo.borrowDate,borrowinfo.returnDate from book inner join borrowinfo on book.b_id = borrowinfo.b_id where borrowinfo.u_id = '" 
        + u_id + "' AND returnDate is null" ;
        Database db = new Database();
        ResultSet rs = db.query(sql);
        try {
            while (rs.next()) {
                BorrowInformation bi = new BorrowInformation();
                bi.setBorrow_id(rs.getInt("borrow_id"));
                bi.setBorrowDate(rs.getDate("borrowDate"));
                bi.setReturnDate(rs.getDate("returnDate"));
                bi.setB_name(rs.getString("b_name"));
                bi.setB_pic(rs.getString("b_pic"));
                bi.setB_author(rs.getString("b_au"));
                bi.setB_location(rs.getString("b_location"));
                bi.setLatestReturnDate(rs.getDate("latestReturnDate"));
                list.add(bi);
            }
            db.close();
        } catch (SQLException e) {
            System.out.println(e.toString());
        }
        return list;
    }
	
	public List<String> getAllPress() {
		List<String> press=new ArrayList<String>();
		String sql="select distinct b_press from book";
		Database db=new Database();
		ResultSet rs=db.query(sql);
		try {
			while(rs.next()) {
				press.add(rs.getString("b_press"));
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return press;
	}
	public List<Integer> getAllNum(){
		List<Integer> nums=new ArrayList<Integer>();
		String sql = "select sum(b_in) as b_in,sum(b_out) as b_out from book";
		Database db=new Database();
		ResultSet rs=db.query(sql);
		try {
			while(rs.next()) {
				nums.add(rs.getInt("b_in"));
				nums.add(rs.getInt("b_out"));
				nums.add(rs.getInt("b_in")+rs.getInt("b_out"));
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return nums;
	}
	
	public void renewBook(int borrow_id, int time) {
		Database db = new Database();
		String sql = "select * from BorrowInfo where borrow_id = " + borrow_id;
		ResultSet rs = db.query(sql);
		try {
			while (rs.next()) {
				Date date = rs.getDate("latestReturnDate");
				SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
				Calendar calendar = new GregorianCalendar();
				calendar.setTime(date);
				calendar.add(calendar.DATE, time);
				date = calendar.getTime();
				String renewDate = sdf.format(date);
				String sql1 = "update  BorrowInfo set latestReturnDate = ' " + renewDate + "' where borrow_id = '" + borrow_id + "'";
				db.execuet(sql1);
			}			
		} catch (SQLException e) {
			System.out.println(e.toString());
		}
	}
}
