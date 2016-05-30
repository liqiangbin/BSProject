package com.cn.hnust.dao;

import java.util.List;

import com.cn.hnust.pojo.Searchinfo;

public interface SearchinfoDao {
    int deleteByPrimaryKey(Integer id);

    int insert(Searchinfo record);

    int insertSelective(Searchinfo record);

    Searchinfo selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Searchinfo record);

    int updateByPrimaryKey(Searchinfo record);
    
    List<Searchinfo> selectByCusId(Integer id);
    
    List<Searchinfo> selectAllByCusId(Integer id);
    
}