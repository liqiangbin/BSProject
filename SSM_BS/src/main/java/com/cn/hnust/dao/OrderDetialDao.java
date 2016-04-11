package com.cn.hnust.dao;

import java.util.List;
import java.util.Map;

import com.cn.hnust.pojo.Order;
import com.cn.hnust.pojo.OrderDetial;

public interface OrderDetialDao {
    int deleteByPrimaryKey(Integer id);

    int insert(OrderDetial record);

    int insertSelective(OrderDetial record);

    OrderDetial selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(OrderDetial record);

    int updateByPrimaryKey(OrderDetial record);
    List <OrderDetial>  getOrderDetialNoPage(Map condition);
}