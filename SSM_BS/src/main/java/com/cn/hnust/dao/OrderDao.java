package com.cn.hnust.dao;

import java.util.List;
import java.util.Map;

import com.cn.hnust.pojo.Manager;
import com.cn.hnust.pojo.Order;

public interface OrderDao {
    int deleteByPrimaryKey(Integer id);

    int insert(Order record);

    int insertSelective(Order record);

    Order selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Order record);

    int updateByPrimaryKeyWithBLOBs(Order record);

    int updateByPrimaryKey(Order record);
    int getCounts(Order order);
    List <Order>  getOrderByPage(Map condition);
    List <Order>  getOrderNoPage(Map condition);
    List <Order> findByMonth(String dateParam);
}