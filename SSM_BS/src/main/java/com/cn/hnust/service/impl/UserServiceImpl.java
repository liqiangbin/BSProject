package com.cn.hnust.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.cn.hnust.dao.CustomerDao;
import com.cn.hnust.pojo.Customer;
import com.cn.hnust.service.IUserService;

@Service("userService")
public class UserServiceImpl implements IUserService {
	@Resource
	private CustomerDao customerDao;

	public void insert(Customer customer) {
		// TODO Auto-generated method stub
		
	}

	public int updateById(Customer customer) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int checkUserName(String name) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int login(Customer customer) {
		// TODO Auto-generated method stub
		return 0;
	}

	
	
}