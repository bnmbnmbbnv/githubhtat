package com.htat.service;

import java.util.List;

import com.htat.pojo.Exercise;


public interface ExerciseService {
	public void insertExercise(Exercise exercise);
	
	public void changeExercise(Exercise exercise);
	
	public void deleteExercise(Exercise exercise);
	
	public Exercise findExerciseById(int id);
	
	public List<Exercise> findAllExercise();
	
	public void insertExerciseset(Exercise exercise);
	
	public void changeExercisesituation(Exercise exercise);
}
