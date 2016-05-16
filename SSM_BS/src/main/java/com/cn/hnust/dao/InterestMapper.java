package com.cn.hnust.dao;

import com.cn.hnust.pojo.Interest;

public interface InterestMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Interest record);

    int insertSelective(Interest record);

    Interest selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Interest record);

    int updateByPrimaryKey(Interest record);
    
    Interest selectByCusId(Integer id);
}