package com.myt.pmg.dao;

import java.util.List;

import org.springframework.data.domain.Sort;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.stereotype.Repository;

import com.myt.pmg.model.Ip;

@Repository
public class IpDao extends BasicDaoImpl<Ip> {

	public List<Ip> getAllIpForUser(String userid) {
		Query query = new Query();
		query.addCriteria(Criteria.where("userid").is(userid));
		return getMongoTemplate().find(query, Ip.class);
	}

	public Ip getLastAccessIp(String userid) {
		Query query = new Query();
		query.addCriteria(Criteria.where("userid").is(userid));
		query.with(new Sort(Sort.Direction.DESC, "accessTime"));
		return getMongoTemplate().findOne(query, Ip.class);
	}

	public Ip findByIp(String ip, String userid) {
		Query query = new Query();
		query.addCriteria(Criteria.where("ip").is(ip));
		query.addCriteria(Criteria.where("userid").is(userid));
		return getMongoTemplate().findOne(query, Ip.class);
	}

	public void updateIp(Ip ip) {
		getMongoTemplate().save(ip);
	}

}
