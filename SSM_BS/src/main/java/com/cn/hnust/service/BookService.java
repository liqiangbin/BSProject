package com.cn.hnust.service;

import java.util.List;
import java.util.Map;
import com.cn.hnust.pojo.Book;

public interface BookService {
	public int getCounts(Book book);
	public List<Book> getBookByPage(Map condition);
	public int deleteById(int id);
	public int updateByPrimaryKeySelective(Book record);
	public Book selectById(int id);
	
}
