package com.myt.pmg.dao;

import java.util.Date;
import java.util.List;

import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.stereotype.Repository;

import com.myt.pmg.model.Proof;

@Repository
public class ProofDao extends BasicDaoImpl<Proof> {

	public List<Proof> findAll() {
		final String COLLECTION_NAME = getMongoTemplate().getCollectionName(
				Proof.class);
		return (List<Proof>) getMongoTemplate().findAll(Proof.class,
				COLLECTION_NAME);
	}

	public long count() {
		Query query = new Query();
		query.addCriteria(Criteria.where("_id").exists(true));
		return getMongoTemplate().count(query, Proof.class);
	}

	public List<Proof> findProofsForVerification(String userid) {
		Query query = new Query();
		query.addCriteria(Criteria.where("id").exists(true));
		query.addCriteria(Criteria.where("userId").is(userid));
		return getMongoTemplate().find(query, Proof.class);
	}

	public List<Proof> findProofsForLinkId(String linkid) {
		Query query = new Query();
		query.addCriteria(Criteria.where("linkId").is(linkid));
		return getMongoTemplate().find(query, Proof.class);
	}

	public Proof findProofById(String proofid) {
		return super.findById(proofid, Proof.class);
	}

	public long countClicksToday() {
		Query query = new Query();
		query.addCriteria(Criteria.where("submissionDate").gt(
				new Date((new Date().getTime()) - 24 * 3600 * 1000l)));
		return getMongoTemplate().count(query, Proof.class);
	}

	public long countClicksMonth() {
		Query query = new Query();
		query.addCriteria(Criteria.where("submissionDate").gt(
				new Date((new Date().getTime()) - 30 * 24 * 3600 * 1000l)));
		return getMongoTemplate().count(query, Proof.class);
	}

	public void deleteProof(Proof proof) {
		super.delete(proof);
	}
}
