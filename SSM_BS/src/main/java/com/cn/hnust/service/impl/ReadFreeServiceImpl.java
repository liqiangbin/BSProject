package com.cn.hnust.service.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.cn.hnust.dao.BookDao;
import com.cn.hnust.dao.ReadFreeDao;
import com.cn.hnust.pojo.Book;
import com.cn.hnust.pojo.Order;
import com.cn.hnust.pojo.ReadFree;
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

	public List<ReadFree> selectByBookId(int bookId) {
		// TODO Auto-generated method stub
		return readFreeDao.selectByBookId(bookId);
	}

	public int saveOrUpdate(ReadFree readFree) {
		System.out.println("1221212121");
		int xx=0;
			ReadFree read=readFreeDao.selectByPrimaryKey(readFree.getId());
		System.out.println("read «∑Ò”–÷µ--"+read);
			if(read!=null){
				System.out.println("update");
				xx=readFreeDao.updateByPrimaryKeySelective(readFree);
				
		}
			else{
				System.out.println("insert");
				xx=readFreeDao.insert(readFree);
			}
		
		return xx;
		}


	

	



}
