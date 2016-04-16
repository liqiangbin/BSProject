package com.cn.hnust.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.cn.hnust.dao.BookDao;
import com.cn.hnust.pojo.Book;
import com.cn.hnust.pojo.Order;
import com.cn.hnust.service.BookService;
@Service("bookService")
public class BookServiceImpl implements BookService{
	@Resource
	private BookDao bookDao;

	public int getCounts(Book book) {
		// TODO Auto-generated method stub
		return bookDao.getCounts(book);
	}

	public List<Book> getBookByPage(Map condition) {
		// TODO Auto-generated method stub
		return bookDao.getBookByPage(condition);
	}

	public int deleteById(int id) {
		// TODO Auto-generated method stub
		return bookDao.deleteByPrimaryKey(id);
	}

	public int updateByPrimaryKeySelective(Book record) {
		// TODO Auto-generated method stub
		return bookDao.updateByPrimaryKeySelective(record);
	}



}
