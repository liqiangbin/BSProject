package com.cn.hnust.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.cn.hnust.dao.IUserDao;
import com.cn.hnust.dao.NoticeDao;
import com.cn.hnust.pojo.Notice;
import com.cn.hnust.service.NoticeService;
@Service("noticeService")
public class NoticeServiceImpl implements NoticeService {
	@Resource
	private NoticeDao noticeDao;
	public void insert(Notice notice) {
		noticeDao.insert(notice);
		
	}

}
