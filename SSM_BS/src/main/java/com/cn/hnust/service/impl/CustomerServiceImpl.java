package com.cn.hnust.service.impl;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.cn.hnust.dao.CustomerDao;
import com.cn.hnust.pojo.Customer;
import com.cn.hnust.service.CustomerService;

@Service("customerService")
public class CustomerServiceImpl implements CustomerService {
	@Resource
	private CustomerDao customerDao;

	public int insert(Customer customer) {
		int x=customerDao.insert(customer);
		return x;
	}

	public int updateById(Customer customer) {
		return customerDao.updateByPrimaryKeySelective(customer);
	}

	public int checkUserName(String name) {
		int status=0;
		List<Customer> list=new ArrayList<Customer>();
		list=customerDao.sellectAllCus();
		for (Customer customer : list) {
			if(customer.getLoginname().equals(name)){
				status=1;
			}
		}
		return status;
	}

	public List<Customer> sellectAllCus() {
		List<Customer> list=new ArrayList<Customer>();
		list=customerDao.sellectAllCus();
		return list;
	}

	
	
}