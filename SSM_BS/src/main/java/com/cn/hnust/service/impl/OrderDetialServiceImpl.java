package com.cn.hnust.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.cn.hnust.dao.OrderDetialDao;
import com.cn.hnust.pojo.OrderDetial;
import com.cn.hnust.service.OrderDetialService;
@Service("orderDetialService")
public class OrderDetialServiceImpl implements OrderDetialService{
	@Resource
	private OrderDetialDao orderDetialDao ;

	public List<OrderDetial> getOrderDetialNoPage(Map condition) {
		// TODO Auto-generated method stub
		return orderDetialDao.getOrderDetialNoPage(condition);
	}

}
