package com.cn.hnust.service;

import java.util.List;
import java.util.Map;

import com.cn.hnust.pojo.Type;

public interface TypeService {
	 public  void insert(Type type);
	 public int getCounts(Type type);
	 public List<Type> getTypeByPage(Map condition);
	 public  int deleteByTypeNumber(int deleteByTypeNumber);
	 public List<Type> getByParams(Type type);
	 public List<Type> selectAll();
	 public int update(Type type);

}
