package com.htat.dao;

import java.io.Serializable;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;



public final class HibernateUtil {
	private static SessionFactory sessionFactory;
	private HibernateUtil(){
	}
	static{
		Configuration cfg = new Configuration();
		cfg.configure();
		sessionFactory  = cfg.buildSessionFactory();
	}
	public static SessionFactory getSessionFactory() {
		return sessionFactory;
	}
	public static Session getSession(){
		return sessionFactory.openSession();
	}
	
	public void add(Object entity) {
		Session s = null;
		Transaction tx = null;
		try {
			s = HibernateUtil.getSession();
			tx = s.beginTransaction();
			s.save(entity);
			// s.persist(user);
			tx.commit();
		} catch (HibernateException e) {
			if (tx != null)
				tx.rollback();
			throw e;
		} finally {
			if (s != null)
				s.close();
		}
	}
	public void update(Object entity){
		Session s = null;
		Transaction tx = null;
		try {
			s = HibernateUtil.getSession();
			tx = s.beginTransaction();
			s.update(entity);
			tx.commit();
		} catch (HibernateException e) {
			if (tx != null)
				tx.rollback();
			throw e;
		} finally {
			if (s != null)
				s.close();
		}
	}
	public void delete(Object entity) {
		
		Session s = null;
		Transaction tx = null;
		try {
			s = HibernateUtil.getSession();
			tx = s.beginTransaction();
			s.delete(entity);
			tx.commit();
		} catch (HibernateException e) {
			if (tx != null)
				tx.rollback();
			throw e;
		} finally {
			if (s != null)
				s.close();
		}
	}
	public Object SelectById(Class clazz,Serializable id) {
		Session s = null;
		try {
			s = HibernateUtil.getSession();
			Object obj = s.get(clazz, id);
			return obj;
		} finally {
			if (s != null)
				s.close();
		}
	}
}
