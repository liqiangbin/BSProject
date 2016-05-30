package com.cn.hnust.service;

import java.util.List;

import com.cn.hnust.pojo.Searchinfo;

public interface SearchInfoService {
	 public  List<Searchinfo> selectByCusId(int cusId);
	 public  List<Searchinfo> selectAllByCusId(int cusId);
	 public  int insert(Searchinfo searchinfo);
	 public  int deleteById(int id);
}
