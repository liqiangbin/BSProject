package com.cn.hnust.service.impl;

import java.util.List;
import java.util.Map;

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
	public int getCounts(Notice notice) {
		// TODO Auto-generated method stub
		return noticeDao.getCounts(notice);
	}
	public List<Notice> getNoticeByPage(Map condition) {
		// TODO Auto-generated method stub
		//System.out.println("map:"+condition.get("title"));
		return noticeDao.getNoticeByPage(condition);
	}
	public int deleteById(int id) {
		return noticeDao.deleteByPrimaryKey(id);
	}
	public List<Notice> SellectAll() {
		// TODO Auto-generated method stub
		return noticeDao.SelectAll();
	}

}
