package com.htat.service;

import java.util.List;

import com.htat.pojo.Usermemory;

public interface UsermemoryService {
	public void insertUsermemory(Usermemory usermemory);
	
	public void deleteUsermemory(Usermemory usermemory);
	
	public List<Usermemory> selectByUserid(String userid);
}
