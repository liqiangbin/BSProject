package com.cn.hnust.dao;

import java.util.List;
import java.util.Map;

import com.cn.hnust.pojo.Notice;
import com.cn.hnust.pojo.Type;

public interface TypeDao {
    int deleteByTypeNumber(Integer id);

    int insert(Type record);

    int insertSelective(Type record);

    Type selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Type record);

    int updateByPrimaryKey(Type record);
    int getCounts(Type record);
    List<Type>  getTypeByPage(Map condition);
    List<Type> getByParams(Type record);
    List<Type> selectAll();
}