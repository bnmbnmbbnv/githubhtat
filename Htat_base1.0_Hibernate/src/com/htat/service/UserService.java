package com.htat.service;

import java.util.List;

import com.htat.pojo.User;


public interface UserService {
	public void insertUser(User user);
	
	public void changeUser(User user);
	
	public User findExerciseById(int id);
	
	public void deleteExercise(User user);
	
	public List<User> findAllUser();
	
	public boolean checkUserName(String username);
}
