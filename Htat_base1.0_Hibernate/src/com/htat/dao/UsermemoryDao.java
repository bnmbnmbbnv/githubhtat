package com.htat.dao;

import java.util.List;

import com.htat.pojo.Usermemory;

public interface UsermemoryDao {
	public void saveUsermemory(Usermemory usermemory);
	
	public void deleteUsermemory(Usermemory usermemory);
	
	public List<Usermemory> selectByUserid(String userid);
}
