package com.cn.hnust.dao;

import java.util.List;

import com.cn.hnust.pojo.ShopCar;

public interface ShopCarDao {
    int deleteByPrimaryKey(Integer id);

    int insert(ShopCar record);

    int insertSelective(ShopCar record);

    ShopCar selectByPrimaryKey(Integer id);
    
    List<ShopCar> selectByCusId(Integer id);
    
    int updateByPrimaryKeySelective(ShopCar record);

    int updateByPrimaryKey(ShopCar record);
}