package com.myt.pmg.dao;

import java.util.List;

import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.stereotype.Repository;

import com.myt.pmg.model.Report;

@Repository
public class ReportDao extends BasicDaoImpl<Report> {

	public List<Report> findOpenReports() {
		Query query = new Query();
		query.addCriteria(Criteria.where("closed").is(false));
		return getMongoTemplate().find(query, Report.class);
	}

	public List<Report> findClosedReports() {
		Query query = new Query();
		query.addCriteria(Criteria.where("closed").is(true));
		return getMongoTemplate().find(query, Report.class);
	}

	public long countOpenReports() {
		Query query = new Query();
		query.addCriteria(Criteria.where("closed").is(false));
		return getMongoTemplate().count(query, Report.class);
	}

	public long countClosedReports() {
		Query query = new Query();
		query.addCriteria(Criteria.where("closed").is(true));
		return getMongoTemplate().count(query, Report.class);
	}

}
