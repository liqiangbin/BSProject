package com.cn.hnust.dao;

import com.cn.hnust.pojo.ReadFree;

public interface ReadFreeDao {
    int deleteByPrimaryKey(Integer id);

    int insert(ReadFree record);

    int insertSelective(ReadFree record);

    ReadFree selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(ReadFree record);

    int updateByPrimaryKey(ReadFree record);
}