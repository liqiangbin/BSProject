package com.cn.hnust.dao;

import java.util.List;

import com.cn.hnust.pojo.Customer;

public interface CustomerDao {
    int deleteByPrimaryKey(Integer id);

    int insert(Customer record);

    int insertSelective(Customer record);

    Customer selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Customer record);

    int updateByPrimaryKey(Customer record);
    
    List<Customer> sellectAll();
}