package com.cn.hnust.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.cn.hnust.dao.SubtypeDao;
import com.cn.hnust.pojo.Subtype;
import com.cn.hnust.pojo.Type;
import com.cn.hnust.service.SubTypeService;
@Service("subTypeService")
public class SubTypeServiceImpl implements SubTypeService {
	@Resource
	private SubtypeDao subTypeDao;
	public void insert(Subtype type) {
		
		subTypeDao.insert(type);
	}

	public int getCounts(Subtype type) {
		// TODO Auto-generated method stub
		return 0;
	}

	public List<Subtype> getTypeByPage(Map condition) {
		// TODO Auto-generated method stub
		return null;
	}

	public int deleteById(int id) {
		// TODO Auto-generated method stub
		return subTypeDao.deleteByPrimaryKey(id);
	}

	public List<Subtype> getAllSelect(Subtype subtype) {
		// TODO Auto-generated method stub
		return subTypeDao.getAllSelect(subtype);
	}

	public List<Subtype> selectAll() {
		return subTypeDao.selectAll();
	}

	public int update(Subtype type) {
		// TODO Auto-generated method stub
		return subTypeDao.updateByPrimaryKeySelective(type);
	}

}
