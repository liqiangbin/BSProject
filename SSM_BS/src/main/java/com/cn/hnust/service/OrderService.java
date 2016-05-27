package com.cn.hnust.service;

import java.util.List;
import java.util.Map;

import com.cn.hnust.pojo.Order;

public interface OrderService {
	public int getCounts(Order order);
	public List<Order> getOrderByPage(Map condition);
	public List<Order> getOrderNoPage(Map condition);
	public  int updateByPrimaryKeySelective(Order record);
	public  int insert(Order record);
	public  int delete(int id);
	public List<Order> findByMonth(String dateParam);
}
