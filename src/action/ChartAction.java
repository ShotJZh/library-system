package action;

import entity.Book;
import entity.BookType;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import dao.BookDAO;

public class ChartAction {
	private List<String> nameList;//书名
	private List<String> idList;//书id
	private List<Integer> inList;//在馆数
	private List<Integer> outList;//借出数
	
	private List<String> typeList;//书类别名称
	private List<Integer> typeSumList;//类别包含图书总数
	private List<Integer> typeInList;
	private List<Integer> typeOutList;
	
	private List<String> typeList2;//类别
	private List<Double> rateList;//
	
	private List<String> nameList2;
	private List<Integer> borrowTimesList;
	
	private int date;
	private int book_sum=0;
	private int book_in_sum=0;
	private int book_out_sum=0;
	
	public int getDate() {
		return date;
	}

	public void setDate() {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy");
        Date d = new Date();
        this.date=Integer.parseInt(sdf.format(d));
	}

	public List<String> getNameList2() {
		return nameList2;
	}

	public void setNameList2(List<String> nameList2) {
		this.nameList2 = nameList2;
	}

	public List<Integer> getBorrowTimesList() {
		return borrowTimesList;
	}

	public void setBorrowTimesList(List<Integer> borrowTimesList) {
		this.borrowTimesList = borrowTimesList;
	}

	public List<String> getTypeList2() {
		return typeList2;
	}

	public void setTypeList2(List<String> typeList2) {
		this.typeList2 = typeList2;
	}

	public List<Double> getRateList() {
		return rateList;
	}

	public void setRateList(List<Double> rateList) {
		this.rateList = rateList;
	}

	public List<String> getTypeList() {
		return typeList;
	}

	public void setTypeList(List<String> typeList) {
		this.typeList = typeList;
	}

	public List<Integer> getTypeSumList() {
		return typeSumList;
	}

	public void setTypeSumList(List<Integer> typeSumList) {
		this.typeSumList = typeSumList;
	}

	public List<String> getNameList() {
		return nameList;
	}

	public void setNameList(List<String> nameList) {
		this.nameList = nameList;
	}

	public List<String> getIdList() {
		return idList;
	}

	public void setIdList(List<String> idList) {
		this.idList = idList;
	}

	public List<Integer> getInList() {
		return inList;
	}

	public void setInList(List<Integer> inList) {
		this.inList = inList;
	}

	public List<Integer> getOutList() {
		return outList;
	}

	public void setOutList(List<Integer> outList) {
		this.outList = outList;
	}

	public List<Integer> getTypeInList() {
		return typeInList;
	}

	public void setTypeInList(List<Integer> typeInList) {
		this.typeInList = typeInList;
	}

	public List<Integer> getTypeOutList() {
		return typeOutList;
	}

	public void setTypeOutList(List<Integer> typeOutList) {
		this.typeOutList = typeOutList;
	}

	public void setDate(int date) {
		this.date = date;
	}

	public int getBook_sum() {
		return book_sum;
	}

	public int getBook_in_sum() {
		return book_in_sum;
	}

	public int getBook_out_sum() {
		return book_out_sum;
	}

	public String test(){
		getColumnar1();
		getPie();
		getColumnar2();
		getLine();
		return "result";
	}
	
	private void getColumnar1()
	{
		BookDAO dao=new BookDAO();
		List<Book> list=dao.getBuyList();
		this.nameList=new ArrayList<String>();
		this.idList=new ArrayList<String>();
		this.inList=new ArrayList<Integer>();
		this.outList=new ArrayList<Integer>();
		for(int i=0;i<list.size();i++){
			nameList.add(list.get(i).getB_name());
			idList.add(list.get(i).getB_id());
			inList.add(list.get(i).getB_in());
			outList.add(list.get(i).getB_out());
		}
		book_sum=dao.getAllNum().get(2);
		book_in_sum=dao.getAllNum().get(0);
		book_out_sum=dao.getAllNum().get(1);
	}
	
	private void getPie(){
		BookDAO dao=new BookDAO();
		List<BookType> list=dao.getTypeSumList();
		this.typeList=new ArrayList<String>();
		this.typeSumList=new ArrayList<Integer>();
		this.typeInList=new ArrayList<Integer>();
		this.typeOutList=new ArrayList<Integer>();
		System.out.println("list的大小为："+list.size());
		for(int i=0;i<list.size();i++){
			this.typeList.add(list.get(i).getType_name());
			this.typeSumList.add(list.get(i).getType_sum());
			this.typeInList.add(list.get(i).getType_in());
			this.typeOutList.add(list.get(i).getType_out());
		}
	}
	
	private void getColumnar2(){
		BookDAO dao=new BookDAO();
		List<Book> list=dao.getTypeBorrowtimesList();
		this.typeList2=new ArrayList<String>();
		this.rateList=new ArrayList<Double>();
		for(int i=0;i<3;i++){
			this.typeList2.add(list.get(i).getB_name());
			this.rateList.add(Double.parseDouble(list.get(i).getB_type()));
		}
	}
	
	private void getLine(){
		setDate();
		BookDAO dao=new BookDAO();
		List<Book> list=dao.getOldBookList();
		this.nameList2=new ArrayList<String>();
		this.borrowTimesList=new ArrayList<Integer>();
		System.out.println(list.size());
		for(int i=0,k=0;i<3;i++){
			nameList2.add(list.get(k).getB_name());						
			for(int j=0;j<5;j++)
			{				
				int year=list.get(k).getB_in();				
				if(year==(this.date-j)){
					borrowTimesList.add(list.get(k).getB_borrowtimes());
					k++;
				}
				else{
					borrowTimesList.add(0);
				}
			}
			while(k<list.size()&&nameList2.get(i).equals(list.get(k).getB_name()))
				k++;
		}
	}
}
