package com.cn.hnust.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.cn.hnust.dao.SearchinfoDao;
import com.cn.hnust.pojo.Searchinfo;
import com.cn.hnust.service.SearchInfoService;
@Service("searchInfoService")
public class SearchInfoServiceImpl implements SearchInfoService {
	@Resource
	private SearchinfoDao searchinfoDao;
	public List<Searchinfo> selectByCusId(int cusId) {
		// TODO Auto-generated method stub
		return searchinfoDao.selectByCusId(cusId);
	}

	public int insert(Searchinfo searchinfo) {
		// TODO Auto-generated method stub
		return searchinfoDao.insert(searchinfo);
	}

	public int deleteById(int id) {
		// TODO Auto-generated method stub
		return searchinfoDao.deleteByPrimaryKey(id);
	}

}
