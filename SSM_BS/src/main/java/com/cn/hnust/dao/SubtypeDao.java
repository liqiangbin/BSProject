package com.cn.hnust.dao;

import java.util.List;
import java.util.Map;

import com.cn.hnust.pojo.Notice;
import com.cn.hnust.pojo.Subtype;

public interface SubtypeDao {
    int deleteByPrimaryKey(Integer id);

    int insert(Subtype record);

    int insertSelective(Subtype record);

    Subtype selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Subtype record);

    int updateByPrimaryKey(Subtype record);
    int getCounts(Subtype subtype);
    List<Subtype>  getSubtypeByPage(Map condition);
    List<Subtype>  getAllSelect(Subtype subtype);
    List<Subtype>  selectAll();
}