package com.cn.hnust.service;

import java.util.List;
import java.util.Map;

import com.cn.hnust.pojo.Subtype;
import com.cn.hnust.pojo.Type;

public interface SubTypeService {
	public  void insert(Subtype type);
	 public int getCounts(Subtype type);
	 public List<Subtype> getAllSelect(Subtype type);
	 public List<Subtype> getTypeByPage(Map condition);
	 public  int deleteById(int id);
	 public List<Subtype> selectAll();
	 public  int update(Subtype type); 

}
