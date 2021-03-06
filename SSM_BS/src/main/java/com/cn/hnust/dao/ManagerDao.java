package com.cn.hnust.dao;

import java.util.List;
import java.util.Map;

import com.cn.hnust.pojo.Manager;

public interface ManagerDao {
    int deleteByPrimaryKey(Integer id);

    int insert(Manager record);

    int insertSelective(Manager record);

    Manager selectByPrimaryKey(Integer id);
    
    Manager selectByLogin(String loginName,String password);

    int updateByPrimaryKeySelective(Manager record);

    int updateByPrimaryKey(Manager record);
    
    List<Manager> getManager(Map whereCondition);
    int getCounts(Manager manager);
    List<Manager>  getManagerByPage(Map condition);
}