package com.cn.hnust.service.impl;

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

	
}