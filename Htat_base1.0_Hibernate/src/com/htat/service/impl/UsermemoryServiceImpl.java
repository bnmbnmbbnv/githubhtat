package com.htat.service.impl;

import java.util.List;

import com.htat.dao.UsermemoryDao;
import com.htat.dao.impl.UsermemoryDaoImpl;
import com.htat.pojo.Usermemory;
import com.htat.service.UsermemoryService;

public class UsermemoryServiceImpl implements UsermemoryService {
	private UsermemoryDao umDao= new UsermemoryDaoImpl();
	public void deleteUsermemory(Usermemory usermemory) {
		// TODO Auto-generated method stub

	}

	public void insertUsermemory(Usermemory usermemory) {
		umDao.saveUsermemory(usermemory);
		System.out.println("aaaaa");
	}


	public List<Usermemory> selectByUserid(String userid) {
		return umDao.selectByUserid(userid);
	}

}
