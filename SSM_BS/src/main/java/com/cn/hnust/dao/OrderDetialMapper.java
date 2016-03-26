package com.cn.hnust.dao;

import com.cn.hnust.pojo.OrderDetial;

public interface OrderDetialMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(OrderDetial record);

    int insertSelective(OrderDetial record);

    OrderDetial selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(OrderDetial record);

    int updateByPrimaryKey(OrderDetial record);
}