package com.cn.hnust.dao;

import com.cn.hnust.pojo.Suggest;

public interface SuggestDao {
    int deleteByPrimaryKey(Integer id);

    int insert(Suggest record);

    int insertSelective(Suggest record);

    Suggest selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Suggest record);

    int updateByPrimaryKey(Suggest record);
}