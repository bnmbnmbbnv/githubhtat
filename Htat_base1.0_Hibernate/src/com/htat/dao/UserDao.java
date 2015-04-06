package com.htat.dao;

import java.util.List;

import com.htat.pojo.User;


public interface UserDao {
	public void saveUser(User user);
	
	public void updateUser(User user);

	public void deleteUser(User user);

	public User selectUserById(int id);
	
	public List<User> selectAllUser();
	
	public boolean check(User user);
	
	public User selectUserByUsername(User user);
	
	public boolean checkUserName(String username);
}
