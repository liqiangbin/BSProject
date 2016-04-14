package com.cn.hnust.service;

import java.util.List;

import com.cn.hnust.pojo.ReadFree;

public interface ReadFreeService {

	public int deleteByBookId(int bookId);
	public List<ReadFree> selectByBookId(int bookId);
	
}
