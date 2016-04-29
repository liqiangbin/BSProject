package com.cn.hnust.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.cn.hnust.dao.IUserDao;
import com.cn.hnust.dao.NoticeDao;
import com.cn.hnust.pojo.Notice;
import com.cn.hnust.service.NoticeService;
import com.cn.hnust.service.SuggestService;
@Service("suggestService")
public class SuggestServiceImpl implements SuggestService {

	public void insert(Notice notice) {
		// TODO Auto-generated method stub
		
	}

	public int getCounts(Notice notice) {
		// TODO Auto-generated method stub
		return 0;
	}

	public List<Notice> getNoticeByPage(Map condition) {
		// TODO Auto-generated method stub
		return null;
	}

	public int deleteById(int id) {
		// TODO Auto-generated method stub
		return 0;
	}
	
}
