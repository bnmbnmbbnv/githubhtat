package com.htat.dao;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.htat.pojo.Exercise;
import com.htat.pojo.User;

public class TestDao {
	public static void main(String args[]){
		SessionFactory sessionFactory;//创建会话工厂
		try {
			sessionFactory = new Configuration().configure().buildSessionFactory();
		} catch (Throwable ex) {
			throw new ExceptionInInitializerError(ex);
		}
	Transaction tran = null;
	Session session = sessionFactory.openSession();
	try {
		tran = session.beginTransaction();
		User user = new User();
		user.setUsername("ccllgg");
		Exercise exercise = new Exercise();
		exercise.setContent("ccllgg");
		session.save(user);
		session.save(exercise);
		tran.commit();
		session.close();
		sessionFactory.close();
	} catch (HibernateException ex) {
		// TODO: handle exception
		ex.printStackTrace();
		if(tran!=null){
			try {
				tran.rollback();
			} catch (HibernateException tranEx) {
				// TODO: handle exception
				tranEx.printStackTrace();
			}
		}
		
	}
		
		
		
		
		
		
	}
}
