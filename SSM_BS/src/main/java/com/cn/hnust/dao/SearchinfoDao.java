package com.cn.hnust.dao;

import com.cn.hnust.pojo.Searchinfo;

public interface SearchinfoDao {
    int deleteByPrimaryKey(Integer id);

    int insert(Searchinfo record);

    int insertSelective(Searchinfo record);

    Searchinfo selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Searchinfo record);

    int updateByPrimaryKey(Searchinfo record);
}