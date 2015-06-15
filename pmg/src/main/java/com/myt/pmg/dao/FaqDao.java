package com.myt.pmg.dao;

import java.util.List;

import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.stereotype.Repository;

import com.myt.pmg.model.FAQ;

@Repository
public class FaqDao extends BasicDaoImpl<FAQ> {

	public List<FAQ> findActiveFaqs() {
		Query query = new Query();
		query.addCriteria(Criteria.where("active").is(true));
		return getMongoTemplate().find(query, FAQ.class);
	}

	public List<FAQ> findAllFaqs() {
		return super.findAll(FAQ.class);
	}

	public void update(FAQ faq) {
		getMongoTemplate().save(faq);
	}

}
