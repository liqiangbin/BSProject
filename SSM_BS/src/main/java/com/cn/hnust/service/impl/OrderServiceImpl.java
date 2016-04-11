package com.cn.hnust.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.cn.hnust.dao.OrderDao;
import com.cn.hnust.pojo.Order;
import com.cn.hnust.service.OrderService;
@Service("orderService")
public class OrderServiceImpl implements OrderService{
	@Resource
	private OrderDao orderDao;

	public int getCounts(Order order) {
		// TODO Auto-generated method stub
		return this.orderDao.getCounts(order);
	}

	public List<Order> getOrderByPage(Map condition) {
		// TODO Auto-generated method stub
		return this.orderDao.getOrderByPage(condition);
	}

	public List<Order> getOrderNoPage(Map condition) {
		// TODO Auto-generated method stub
		System.out.println("impl:"+condition.get("orderid"));
		return this.orderDao.getOrderNoPage(condition);
	}

}
