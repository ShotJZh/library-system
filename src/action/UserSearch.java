package action;

import entity.*;
import java.util.*;
import dao.*;
public class UserSearch {
	private String key;
	private List<Book> list = new ArrayList<Book>();
	private List<Book> similarList = new ArrayList<Book>();
	public List<Book> getList() {
		return list;
	}

	public void setList(List<Book> list) {
		this.list = list;
	}

	public String getKey() {
		return key;
	}

	public void setKey(String key) {
		this.key = key;
	}
	public String search(){
		BookDAO dao=new BookDAO();
		list=dao.searchBook(key);
		setSimilarList(dao.getSimilarBook(list));				
		return "result";
	}

	public List<Book> getSimilarList() {
		return similarList;
	}

	public void setSimilarList(List<Book> similarList) {
		this.similarList = similarList;
	}
}
