package com.htat.dao;

import java.util.List;

import com.htat.pojo.Exercise;


public interface ExerciseDao {
	public void saveExercise(Exercise exercise);
	
	public void savaExerciseset(Exercise exercise);
	
	public void updateExercise(Exercise exercise);

	public void deleteExercise(Exercise exercise);

	public Exercise selectExerciseById(int id);
	
	public List<Exercise> selectAllExercise();
	
	public List<Exercise> selectExerciseByExerciseType(String type);
	
	public void updateExercisesituation(Exercise exercise);
}
