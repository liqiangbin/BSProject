package com.cn.hnust.service;

import java.util.List;
import java.util.Map;

import com.cn.hnust.pojo.Notice;

public interface NoticeService {
	 public  void insert(Notice notice);
	 public int getCounts(Notice notice);
	 public List<Notice> getNoticeByPage(Map condition);
	 public  int deleteById(int id);
}
