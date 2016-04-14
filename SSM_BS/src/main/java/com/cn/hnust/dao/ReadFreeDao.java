package com.cn.hnust.dao;

import java.util.List;

import com.cn.hnust.pojo.ReadFree;

public interface ReadFreeDao {
    int deleteByPrimaryKey(Integer id);
    
    int deleteByBookId(Integer bookid);
    
    List<ReadFree> selectByBookId(Integer bookid);

    int insert(ReadFree record);

    int insertSelective(ReadFree record);

    ReadFree selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(ReadFree record);

    int updateByPrimaryKey(ReadFree record);
}