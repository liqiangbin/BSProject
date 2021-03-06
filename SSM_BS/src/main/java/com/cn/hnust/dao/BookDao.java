package com.cn.hnust.dao;

import java.util.List;
import java.util.Map;

import com.cn.hnust.pojo.Book;

public interface BookDao {
    int deleteByPrimaryKey(Integer id);

    int insert(Book record);

    int insertSelective(Book record);

    Book selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Book record);

    int updateByPrimaryKeyWithBLOBs(Book record);

    int updateByPrimaryKey(Book record);
    int getCounts(Book book);
    List <Book>  getBookByPage(Map condition);
    List <Book>  getBookByNoPage(Map condition);
    List <Book>  getBookBySaled();
    List <Book>  getBookByIdDesc();
    List <Book>   getBookBySql(Map condition);
    List <Book>   getBookBySubSql(Map condition);
}