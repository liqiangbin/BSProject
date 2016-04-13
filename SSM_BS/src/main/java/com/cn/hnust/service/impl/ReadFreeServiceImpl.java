package com.cn.hnust.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.cn.hnust.dao.BookDao;
import com.cn.hnust.dao.ReadFreeDao;
import com.cn.hnust.pojo.Book;
import com.cn.hnust.pojo.Order;
import com.cn.hnust.service.BookService;
import com.cn.hnust.service.ReadFreeService;
@Service("readFreeService")
public class ReadFreeServiceImpl implements ReadFreeService{
	@Resource
	private ReadFreeDao readFreeDao;

	public int deleteByBookId(int bookId) {
		// TODO Auto-generated method stub
		return readFreeDao.deleteByBookId(bookId);
	}

	

	



}
