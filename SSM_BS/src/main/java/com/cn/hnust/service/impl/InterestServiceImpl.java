package com.cn.hnust.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.cn.hnust.dao.InterestMapper;
import com.cn.hnust.pojo.Interest;
import com.cn.hnust.service.InterestService;
@Service("interestService")
public class InterestServiceImpl implements InterestService {
@Resource 
private InterestMapper interestMapper ;
	public int insert(Interest interest) {
		// TODO Auto-generated method stub
		return interestMapper.insert(interest);
	}

	public int update(Interest interest) {
		// TODO Auto-generated method stub
		return interestMapper.updateByPrimaryKeySelective(interest);
	}

	public Interest selectByCusId(int customerId) {
		// TODO Auto-generated method stub
		return interestMapper.selectByCusId(customerId);
	}




}
