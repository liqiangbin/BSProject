package com.cn.hnust.dao;

import com.cn.hnust.pojo.Assess;

public interface AssessDao {
    int deleteByPrimaryKey(Integer id);

    int insert(Assess record);

    int insertSelective(Assess record);

    Assess selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Assess record);

    int updateByPrimaryKeyWithBLOBs(Assess record);

    int updateByPrimaryKey(Assess record);
}