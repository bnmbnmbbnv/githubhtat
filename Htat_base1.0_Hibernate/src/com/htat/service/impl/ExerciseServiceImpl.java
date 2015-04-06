package com.htat.service.impl;

import java.util.List;

import com.htat.dao.ExerciseDao;
import com.htat.dao.impl.ExerciseDaoImpl;
import com.htat.pojo.Exercise;
import com.htat.service.ExerciseService;

public class ExerciseServiceImpl implements ExerciseService {
	
	private ExerciseDao edao = new ExerciseDaoImpl();
	
	public void changeExercise(Exercise exercise) {
		edao.updateExercise(exercise);
	}

	public void deleteExercise(Exercise exercise) {
		edao.deleteExercise(exercise);
	}

	public List<Exercise> findAllExercise() {
		List<Exercise> listE = edao.selectAllExercise();
		return listE;
	}

	public Exercise findExerciseById(int id) {
		Exercise e = edao.selectExerciseById(id);
		return e;
	}

	public void insertExercise(Exercise exercise) {
		edao.saveExercise(exercise);
	}

	public void insertExerciseset(Exercise exercise) {
		edao.savaExerciseset(exercise);
	}

	public void changeExercisesituation(Exercise exercise) {
		edao.updateExercisesituation(exercise);
		
	}

}
