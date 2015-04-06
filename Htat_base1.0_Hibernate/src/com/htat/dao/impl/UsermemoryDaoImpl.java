package com.htat.dao.impl;

import java.util.Iterator;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.htat.dao.HibernateUtil;
import com.htat.dao.UsermemoryDao;
import com.htat.pojo.Exercise;
import com.htat.pojo.Usermemory;
import com.opensymphony.xwork2.ActionContext;

public class UsermemoryDaoImpl implements UsermemoryDao {

	public void deleteUsermemory(Usermemory usermemory) {
		// TODO Auto-generated method stub

	}

	public void saveUsermemory(Usermemory usermemory) {
		Session s = null;
		Transaction tx = null;
		try {
			s = HibernateUtil.getSession();
			tx = s.beginTransaction();
			s.save(usermemory);
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

	public List<Usermemory> selectByUserid(String userid) {
		Session s = null;
		try {
			s = HibernateUtil.getSession();
			String sql = "select exerciseid from Usermemory where userid = '";sql+=userid+"'";
			Query query = s.createQuery(sql);
			List<Usermemory> list = query.list();
			for(int i=0;i<list.size();i++){
				System.out.println(list.get(i));
			}
			 return list;
		} finally {
			if (s != null)
				s.close();
		}
	}

}
