package com.cn.hnust.service;

import java.util.List;

import com.cn.hnust.pojo.Suggest;

public interface SuggestService {
	public List<Suggest> sellectAll();
	public int update(List<Suggest> list);
}
