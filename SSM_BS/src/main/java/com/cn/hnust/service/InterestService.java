package com.cn.hnust.service;

import com.cn.hnust.pojo.Interest;

public interface InterestService {
	public int insert(Interest interest);
	public int update(Interest interest);
	public Interest selectByCusId(int customerId);
}
