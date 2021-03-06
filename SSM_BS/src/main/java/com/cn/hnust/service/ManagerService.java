package com.cn.hnust.service;  
  
import java.util.List;
import java.util.Map;

import com.cn.hnust.pojo.Manager;
  
public interface ManagerService {  
    public Manager getManagerById(int id); 
    //public List<Manager> getManager(Map whereCondition);
    public List<Manager> getManager(Map whereCondition);
	public Manager selectByLogin(String loginName,String password);
	public int updateByPrimaryKeySelective(Manager record);
	public int getCounts(Manager manager);
	public List<Manager> getManagerByPage(Map condition);
	public int insertManager(Manager manager);
	public int deleteByPrimaryKey(Integer id);
}  
