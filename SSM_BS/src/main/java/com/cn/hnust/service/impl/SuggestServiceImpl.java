package com.cn.hnust.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.cn.hnust.dao.IUserDao;
import com.cn.hnust.dao.NoticeDao;
import com.cn.hnust.dao.SubtypeDao;
import com.cn.hnust.dao.SuggestDao;
import com.cn.hnust.pojo.Notice;
import com.cn.hnust.pojo.Suggest;
import com.cn.hnust.service.NoticeService;
import com.cn.hnust.service.SuggestService;
@Service("suggestService")
public class SuggestServiceImpl implements SuggestService {
	@Resource
	private SuggestDao suggestDao;
	public List<Suggest> sellectAll() {
		// TODO Auto-generated method stub
		return suggestDao.selectAll();
	}

	public int update(List<Suggest> list) {
		// TODO Auto-generated method stub
		int i=0,status=0;
		for (Suggest suggest : list) {
			suggestDao.updateByPrimaryKeySelective(suggest);
			i++;
		}
		if(i==list.size()){
			status=1;
		}
		return status;
	}
	
}
