package com.cn.hnust.dao;

import java.util.List;
import java.util.Map;

import com.cn.hnust.pojo.Manager;
import com.cn.hnust.pojo.Notice;

public interface NoticeDao {
    int deleteByPrimaryKey(Integer id);

    int insert(Notice record);

    int insertSelective(Notice record);

    Notice selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Notice record);

    int updateByPrimaryKeyWithBLOBs(Notice record);

    int updateByPrimaryKey(Notice record);
    int getCounts(Notice manager);
    List<Notice>  getNoticeByPage(Map condition);
    List<Notice>  SelectAll();
}