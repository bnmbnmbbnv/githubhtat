package com.htat.action;

import com.htat.pojo.Exercise;
import com.htat.service.ExerciseService;
import com.htat.service.impl.ExerciseServiceImpl;
import com.opensymphony.xwork2.ActionSupport;

public class ExercisesetAddAction extends ActionSupport {
	private Exercise exercise;
	ExerciseService es = new ExerciseServiceImpl();
	public String execute() {
		exercise.setExerciseset(exercise.getExerciseset());
		es.insertExercise(exercise);
		return "Success";
	}
	// G a S
	public Exercise getExercise() {
		return exercise;
	}

	public void setExercise(Exercise exercise) {
		this.exercise = exercise;
	}

}
