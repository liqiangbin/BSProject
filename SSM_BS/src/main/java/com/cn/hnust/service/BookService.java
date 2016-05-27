package com.cn.hnust.service;

import java.util.List;
import java.util.Map;
import com.cn.hnust.pojo.Book;

public interface BookService {
	public int getCounts(Book book);
	public List<Book> getBookByPage(Map condition);
	public int deleteById(int id);
	public int insert(Book book);
	public int updateByPrimaryKeySelective(Book record);
	public Book selectById(int id);
	public List<Book> getBySaled();
	public List<Book> getBookByIdDesc();
	public List<Book> getBookBySql(Map sql);
	public List<Book> getBookBySubSql(Map sql);
	public List<Book> getBookByNoPage(Map sql);
	
}
