package com.cn.hnust.service;

import java.util.List;

import com.cn.hnust.pojo.ShopCar;

public interface ShopCarService {
	public int insert(ShopCar shopcar);
	public int deleteById(int id);
	public List<ShopCar> selectByCusId(int id);
}
