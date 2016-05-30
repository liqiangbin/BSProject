package com.cn.hnust.service;  
  
import com.cn.hnust.pojo.Customer;
import com.cn.hnust.pojo.User;
  
public interface IUserService {  
    public  void insert(Customer customer);
    public  int updateById(Customer customer);
    public int checkUserName(String name);
    public int login(Customer customer);
}  
