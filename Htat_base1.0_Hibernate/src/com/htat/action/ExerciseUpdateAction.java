package com.htat.action;

import com.htat.pojo.Exercise;
import com.htat.service.ExerciseService;
import com.htat.service.impl.ExerciseServiceImpl;
import com.opensymphony.xwork2.ActionSupport;

public class ExerciseUpdateAction extends ActionSupport {
	private Exercise exercise;
	private String passeId;
	ExerciseService es = new ExerciseServiceImpl();
	public String execute() {
		String eId = String.valueOf(exercise.getId());
		exercise.setId(Integer.parseInt(eId));
		exercise.setTopic(exercise.getTopic());
		exercise.setContent(exercise.getContent());
		exercise.setType(exercise.getType());
		exercise.setLevel(exercise.getLevel());
		exercise.setKeytext(exercise.getKeytext());
		exercise.setAnswer(exercise.getAnswer());
		es.changeExercise(exercise);
		setPasseId(eId);
		return "Success";
	}
	// G a S
	public Exercise getExercise() {
		return exercise;
	}

	public void setExercise(Exercise exercise) {
		this.exercise = exercise;
	}
	public String getPasseId() {
		return passeId;
	}
	public void setPasseId(String passeId) {
		this.passeId = passeId;
	}

}
