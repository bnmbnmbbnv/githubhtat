package com.htat.dao.impl;

import java.util.Iterator;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.htat.dao.HibernateUtil;
import com.htat.dao.UserDao;
import com.htat.pojo.Exercise;
import com.htat.pojo.User;
import com.opensymphony.xwork2.ActionContext;

public class UserDaoImpl implements UserDao {

	public void deleteUser(User user) {
		// TODO Auto-generated method stub
	}

	public void saveUser(User user){
		Session s = null;
		Transaction tx = null;
		try {
			s = HibernateUtil.getSession();
			tx = s.beginTransaction();
			s.save(user);
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

	public List<User> selectAllUser() {
		// TODO Auto-generated method stub
		return null;
	}

	public User selectUserById(int id) {
		Session s = null;
		try {
			s = HibernateUtil.getSession();
			User user = (User) s.get(User.class, id);
			return user;
		} finally {
			if (s != null)
				s.close();
		}
	}

	public void updateUser(User user) {
		Session s = null;
		Transaction tx = null;
		try {
			s = HibernateUtil.getSession();
			tx = s.beginTransaction();
			String sql = "update User set password = '";sql+=user.getPassword()+"'where id='";sql+=user.getId()+"'";
			Query query = s.createQuery(sql);
			query.executeUpdate();
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

	public boolean check(User user) {
		Session s = null;
		try {
			s = HibernateUtil.getSession();
			String sql = "select password from User where username = '";sql+=user.getUsername()+"'";
			Query query = s.createQuery(sql);
			String sql1 = "select id from User where username = '";sql1+=user.getUsername()+"'";
			Query query1 = s.createQuery(sql1);
			//query.setString("username",user.getUsername());
			//query.setString("password", password);
			List list = query.list();
			List list1 = query1.list();
			System.out.println(list+"+++++"+list1);
			if(!list.isEmpty()&&list!=null&&!"".equals(list)){
				Iterator it = list.iterator();
				if(it.hasNext()){
					String getpwd = (String)it.next();
					System.out.println("password:"+getpwd);
					if(getpwd!=null&&!"".equals(getpwd)&&getpwd.equals(user.getPassword())){
						Iterator it1 = list1.iterator();
						if(it1.hasNext()){
						String getid =	String.valueOf(it1.next());
						System.out.println("id:"+getid);
						ActionContext.getContext().getSession().put("uId", getid);
						}
						return true;
					}
				}
			}
			return false;
		} finally {
			if (s!=null)
				s.close();
		}
	}
	public	User selectUserByUsername(User user) {
		Session s = null;
		try {
			s = HibernateUtil.getSession();
			String sql = "select * from User where username = '";sql+=user.getUsername()+"'";
			Query query = s.createQuery(sql);
			List list = query.list();
			
			Iterator it = list.iterator();
				if(it.hasNext()){
				String getid =	String.valueOf(it.next());
				System.out.println("id:"+getid);
				ActionContext.getContext().getSession().put("uId", getid);
				}
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		return null;
	}

	public boolean checkUserName(String username) {
		Session s = null;
		try {
			s = HibernateUtil.getSession();
			String sql = "select username from User where username = '";sql+=username+"'";
			Query query = s.createQuery(sql);
			List list = query.list();
			
			System.out.println(list+"+++++");
			if(list.isEmpty()||list==null||"".equals(list)){
						return true;
					}
			return false;
		} finally {
			if (s!=null)
				s.close();
		}
	}

}
