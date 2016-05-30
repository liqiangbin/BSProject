package com.cn.hnust.service;  
  
import java.util.List;

import com.cn.hnust.pojo.Assess;
  
public interface AssessService {  
	public  int insert(Assess assess);
    public List<Assess> SelectByBookId(int id);
    public  double calRank(int bookId);
    public List<Assess> getByRankDesc();
}  
