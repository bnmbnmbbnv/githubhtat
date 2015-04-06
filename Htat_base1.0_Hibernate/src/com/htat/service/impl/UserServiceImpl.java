package com.htat.service.impl;

import java.util.List;

import com.htat.dao.UserDao;
import com.htat.dao.impl.UserDaoImpl;
import com.htat.pojo.User;
import com.htat.service.UserService;

public class UserServiceImpl implements UserService {
	private UserDao udao = new UserDaoImpl();
	public void changeUser(User user) {
		udao.updateUser(user);
		System.out.println("update success");
	}

	public void deleteExercise(User user) {
		// TODO Auto-generated method stub

	}

	public List<User> findAllUser() {
		// TODO Auto-generated method stub
		return null;
	}

	public User findExerciseById(int id) {
		User u = udao.selectUserById(id);
		return u;
	}

	public void insertUser(User user) {
		udao.saveUser(user);

	}

	public boolean checkUserName(String username) {
		return udao.checkUserName(username);
	}

	

}
