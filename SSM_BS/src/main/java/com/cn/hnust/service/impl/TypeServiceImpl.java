package com.cn.hnust.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.cn.hnust.dao.TypeDao;
import com.cn.hnust.pojo.Type;
import com.cn.hnust.service.TypeService;
@Service("TypeService")
public class TypeServiceImpl implements TypeService {
@Resource
private TypeDao typeDao;
	public void insert(Type type) {
		// TODO Auto-generated method stub
		typeDao.insert(type);

	}

	public int getCounts(Type type) {
		// TODO Auto-generated method stub
		return 0;
	}

	public List<Type> getTypeByPage(Map condition) {
		// TODO Auto-generated method stub
		return null;
	}

	public int deleteByTypeNumber(int id) {
		// TODO Auto-generated method stub
		return typeDao.deleteByTypeNumber(id);
	}

	public List<Type> getByParams(Type type) {
		// TODO Auto-generated method stub
		return typeDao.getByParams(type);
	}

	public List<Type> selectAll() {
		// TODO Auto-generated method stub
		return typeDao.selectAll();
	}

	public int update(Type type) {
		// TODO Auto-generated method stub
		return typeDao.updateByPrimaryKeySelective(type);
	}

}
