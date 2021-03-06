package com.cn.hnust.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.cn.hnust.dao.ManagerDao;
import com.cn.hnust.pojo.Manager;
import com.cn.hnust.service.ManagerService;

@Service("managerService")
public class ManagerServiceImpl implements ManagerService {
	@Resource
	private ManagerDao managerDao;

	public Manager getManagerById(int id) {
		return this.managerDao.selectByPrimaryKey(id);
	}
	public Manager selectByLogin(String loginName,String password) {
		return this.managerDao.selectByLogin(loginName, password);
	}
	
	public List<Manager> getManager(Map whereCondition) {
		 return managerDao.getManager(whereCondition);
	}
	public int updateByPrimaryKeySelective(Manager record){
		return managerDao.updateByPrimaryKeySelective(record);
	}
	public int getCounts(Manager manager) {
		return managerDao.getCounts(manager);
	}
	public List<Manager> getManagerByPage(Map condition) {
		return managerDao.getManagerByPage(condition);
	}
	public int insertManager(Manager manager) {
		return managerDao.insert(manager);
	}
	public int deleteByPrimaryKey(Integer id) {
		return managerDao.deleteByPrimaryKey(id);
	}

	
}