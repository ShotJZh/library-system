package action;

import entity.*;

import java.util.Date;
import java.util.List;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;

import dao.*;

public class BookManage {
	private List<Book> bookList;
	private List<BookType> typeList;
	private List<String> allPress;
	private String b_id;//书籍编号
	private String b_name;//书名
	private String b_pic;//图片
	private String b_author;//作者
	private String b_press;//出版社
	private String b_location;//地点
	private int b_in;//在馆数
	private int b_out;//借出数
	private int b_borrowtimes;//借阅次数
	private Date b_addtime;//添加时间
	private String b_type;//类型编号
	private Book book;
	private Book book_edit;
	private String s_b_name;//搜索时的b_name
	private int pageNow=1;           //初始页为第一页  
    private int pageSize=10;          //每页数据为4条，可调节  
    private Pager page;
    private int bookCount;
    private String showStr;
    private int pageCount;
    private int pageShow;
	public List<Book> getBookList() {
		return bookList;
	}

	public void setBookList(List<Book> bookList) {
		this.bookList = bookList;
	}
	
	public String getB_id() {
		return b_id;
	}

	public void setB_id(String b_id) {
		this.b_id = b_id;
	}

	public String getB_name() {
		return b_name;
	}

	public void setB_name(String b_name) {
		this.b_name = b_name;
	}

	public String getB_pic() {
		return b_pic;
	}

	public void setB_pic(String b_pic) {
		this.b_pic = b_pic;
	}

	public String getB_author() {
		return b_author;
	}

	public void setB_author(String b_author) {
		this.b_author = b_author;
	}

	public String getB_press() {
		return b_press;
	}

	public void setB_press(String b_press) {
		this.b_press = b_press;
	}

	public String getB_location() {
		return b_location;
	}

	public void setB_location(String b_location) {
		this.b_location = b_location;
	}

	public int getB_in() {
		return b_in;
	}

	public void setB_in(int b_in) {
		this.b_in = b_in;
	}

	public int getB_out() {
		return b_out;
	}

	public void setB_out(int b_out) {
		this.b_out = b_out;
	}

	public int getB_borrowtimes() {
		return b_borrowtimes;
	}

	public void setB_borrowtimes(int b_borrowtimes) {
		this.b_borrowtimes = b_borrowtimes;
	}

	public Date getB_addtime() {
		return b_addtime;
	}

	public void setB_addtime(Date b_addtime) {
		this.b_addtime = b_addtime;
	}

	public String getB_type() {
		return b_type;
	}

	public void setB_type(String b_type) {
		this.b_type = b_type;
	}
	
	public String getS_b_name() {
		return s_b_name;
	}

	public void setS_b_name(String s_b_name) {
		this.s_b_name = s_b_name;
	}

	public Book getBook() {
		return book;
	}

	public void setBook(Book book) {
		this.book = book;
	}

	
	public Book getBook_edit() {
		return book_edit;
	}

	public void setBook_edit(Book book_edit) {
		this.book_edit = book_edit;
	}

	public int getPageNow() {
		return pageNow;
	}

	public void setPageNow(int pageNow) {
		this.pageNow = pageNow;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public Pager getPage() {
		return page;
	}

	public void setPage(Pager page) {
		this.page = page;
	}

	public int getBookCount() {
		return bookCount;
	}

	public void setBookCount(int bookCount) {
		this.bookCount = bookCount;
	}

	public List<BookType> getTypeList() {
		return typeList;
	}

	public void setTypeList(List<BookType> typeList) {
		this.typeList = typeList;
	}

	public List<String> getAllPress() {
		return allPress;
	}

	public void setAllPress(List<String> allPress) {
		this.allPress = allPress;
	}

	public String getShowStr() {
		return showStr;
	}

	public void setShowStr(String showStr) {
		this.showStr = showStr;
	}

	public int getPageCount() {
		return pageCount;
	}

	public void setPageCount(int pageCount) {
		this.pageCount = pageCount;
	}

	public int getPageShow() {
		return pageShow;
	}

	public void setPageShow(int pageShow) {
		this.pageShow = pageShow;
	}

	public String showBook() {		
		BookDAO bd=new BookDAO();
		BookTypeDAO bdt=new BookTypeDAO();
		bookCount=bd.getSize(); 
		System.out.println("当前页面"+pageNow);
        if(bookCount%pageSize==0)
        	pageCount=bookCount/pageSize;
        else
        	pageCount=bookCount/pageSize+1;
        
        if(pageNow>pageCount){
			pageNow--; 
		}
        if(pageNow<=0) {
        	pageNow=1;
        }
		pageShow=pageNow;
        bookList = bd.selectBook(pageNow, pageSize); 
        System.out.println(pageSize);
        typeList=bdt.getBookTypelist();
        allPress=bd.getAllPress();
		return "showBook";
	}
	
	public String addBook() {
		Date d=new Date();		
		book.setB_addtime(new java.sql.Date(d.getTime()));
		String img=book.getB_pic();
		String a[]=img.split("<img");
		String b[]=a[1].split("\"");
		book.setB_pic(b[3]);
		BookDAO bd=new BookDAO();
		if(bd.addBook(book))
			return "addBook";
		else
			return "wrong";
	}
	
	public String deleteBook() {
		BookDAO bd=new BookDAO();
		bd.deleteBookById(b_id);
		return "deleteBook";
	}
	
	public String searchBook() {
		BookDAO bd=new BookDAO();
		bookList=bd.searchBook(s_b_name);
		return "search";
	}
	
	public String updateBook() {
		BookDAO bd=new BookDAO();
		bd.updateBook(book_edit);
		System.out.println("被调用");
		System.out.println(book_edit.getB_author());
		System.out.println(book_edit.getB_id());
		System.out.println(book_edit.getB_location());
		return "updateBook";
	}
}
