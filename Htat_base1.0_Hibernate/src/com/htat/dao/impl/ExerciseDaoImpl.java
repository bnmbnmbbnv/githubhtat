package com.htat.dao.impl;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.htat.dao.ExerciseDao;
import com.htat.dao.HibernateUtil;
import com.htat.pojo.Exercise;


public class ExerciseDaoImpl implements ExerciseDao {
	public static SessionFactory sessionFactory;
	public void deleteExercise(Exercise exercise) {
		
		Session s = null;
		Transaction tx = null;
		try {
			s = HibernateUtil.getSession();
			tx = s.beginTransaction();
			s.delete(exercise);
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

	public void saveExercise(Exercise exercise) {
		Session s = null;
		Transaction tx = null;
		try {
			s = HibernateUtil.getSession();
			tx = s.beginTransaction();
			s.save(exercise);
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

	public List<Exercise> selectAllExercise() {
		Session s = null;
		try {
			s = HibernateUtil.getSession();
			String hql = "from Exercise as exercise"; // from Object
			Query queryAll = s.createQuery(hql);
			 List<Exercise> list = queryAll.list();
			 return list;
		} finally {
			if (s != null)
				s.close();
		}
	}

	public List<Exercise> selectExerciseByExerciseType(String type) {
		// TODO Auto-generated method stub
		return null;
	}

	public Exercise selectExerciseById(int id) {
		Session s = null;
		try {
			s = HibernateUtil.getSession();
			
			Exercise exercise = (Exercise) s.get(Exercise.class, id);
			
			return exercise;
			
		} finally {
			if (s != null)
				s.close();
		}
	}

	public void updateExercise(Exercise exercise) {
		Session s = null;
		Transaction tx = null;
		try {
			s = HibernateUtil.getSession();
			tx = s.beginTransaction();
			s.update(exercise);
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

	public void savaExerciseset(Exercise exercise) {
		
	}

	public void updateExercisesituation(Exercise exercise) {
		Session s = null;
		Transaction tx = null;
		try {
			s = HibernateUtil.getSession();
			tx = s.beginTransaction();
			String sql = "update Exercise set situation = '";sql+=exercise.getSituation()+"'where id='";sql+=exercise.getId()+"'";
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

}
