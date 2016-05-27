package com.cn.hnust.service;

import java.util.List;
import java.util.Map;

import com.cn.hnust.pojo.OrderDetial;

public interface OrderDetialService {

	public List<OrderDetial> getOrderDetialNoPage(Map condition);
	public  int insert(OrderDetial detial);
}
