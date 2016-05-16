package com.cn.hnust.service.impl;

import java.util.List;

import javax.annotation.Resource;
import javax.persistence.Access;

import org.springframework.stereotype.Service;

import com.cn.hnust.dao.AssessDao;
import com.cn.hnust.pojo.Assess;
import com.cn.hnust.service.AssessService;

@Service("assessService")
public class AssessServiceImpl implements AssessService {
	@Resource
	private AssessDao assessDao;

	public int insert(Assess assess) {
		// TODO Auto-generated method stub
		return assessDao.insert(assess);
	}

	public List<Assess> SelectByBookId(int bookId) {
		// TODO Auto-generated method stub
		return assessDao.SelectByBookId(bookId);
	}

	public double calRank(int bookId) {
		// TODO Auto-generated method stub
		List<Assess> list=assessDao.SelectByBookId(bookId);
		double rank=0;
		double rankAdd=0;
		for (Assess assess : list) {
			rankAdd+=assess.getRank();
		}
		rank=rankAdd/list.size();
		return rank;
	}

	public List<Assess> getByRankDesc() {
		// TODO Auto-generated method stub
		return assessDao.getByRankDesc();
	}


	
	
}