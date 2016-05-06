package com.cn.hnust.service.impl;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.cn.hnust.dao.ShopCarDao;
import com.cn.hnust.pojo.Customer;
import com.cn.hnust.pojo.ShopCar;
import com.cn.hnust.service.ShopCarService;

@Service("shopCarService")
public class ShopCarServiceImpl implements ShopCarService {
	@Resource
	private  ShopCarDao shopCarDao;

	public int insert(ShopCar shopcar) {
		// TODO Auto-generated method stub
		return shopCarDao.insert(shopcar);
	}

	public int deleteById(int id) {
		// TODO Auto-generated method stub
		return shopCarDao.deleteByPrimaryKey(id);
	}

	public List<ShopCar> selectByCusId(int id) {
		// TODO Auto-generated method stub
		return shopCarDao.selectByCusId(id);
	}

	
	
	
}