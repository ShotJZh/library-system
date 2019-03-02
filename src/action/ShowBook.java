package action;

import entity.Book;
import entity.BookComments;
import dao.BookCommentsDAO;
import dao.BookDAO;
import dao.UserDAO;

import java.util.List;

import entity.Author;
public class ShowBook {
	private String b_id;
	private Book book;
	private Author author;
	private List<BookComments> comm;
	private List<Book> bookList;
	
	public String getB_id() {
		return b_id;
	}
	public void setB_id(String b_id) {
		this.b_id = b_id;
	}
	public Book getBook() {
		return book;
	}
	public void setBook(Book book) {
		this.book = book;
	}
	public Author getAuthor() {
		return author;
	}
	public void setAuthor(Author author) {
		this.author = author;
	}
	public List<BookComments> getComm() {
		return comm;
	}
	public void setComm(List<BookComments> comm) {
		this.comm = comm;
	}
	public List<Book> getBookList() {
		return bookList;
	}
	public void setBookList(List<Book> bookList) {
		this.bookList = bookList;
	}
	
	public String execute(){
		BookDAO b_dao=new BookDAO();
		//System.out.println(this.b_id);
		this.book=b_dao.getById(b_id);
		UserDAO u_dao=new UserDAO();
		//System.out.println(this.book.getB_author());
		this.author=u_dao.getAuthor(this.book.getB_author());
		BookCommentsDAO bc_dao=new BookCommentsDAO();
		this.comm=bc_dao.getBookComments(this.book);
		this.bookList=b_dao.searchBook(this.book.getB_author());
		return "success";
	}
}
