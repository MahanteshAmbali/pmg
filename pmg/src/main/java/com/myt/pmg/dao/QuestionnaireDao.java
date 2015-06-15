package com.myt.pmg.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.myt.pmg.model.Questionnaire;

@Repository
public class QuestionnaireDao extends BasicDaoImpl<Questionnaire> {

	public List<Questionnaire> getAllQuestions() {
		final String COLLECTION_NAME = getMongoTemplate().getCollectionName(
				Questionnaire.class);
		return (List<Questionnaire>) getMongoTemplate().findAll(
				Questionnaire.class, COLLECTION_NAME);
	}

	public String findAnswerForId(String id) {
		return super.findById(id, Questionnaire.class).getAns();
	}
}
