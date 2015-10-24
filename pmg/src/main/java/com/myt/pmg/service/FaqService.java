package com.myt.pmg.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.myt.pmg.dao.FaqDao;
import com.myt.pmg.model.FAQ;


@Service
public class FaqService {
	
	@Autowired
	private FaqDao faqDao;

	public void setFaqDao(FaqDao faqDao) {
		this.faqDao = faqDao;
	}

	public List<FAQ> getActiveFaqs() {
		return faqDao.findActiveFaqs();
	}

	public List<FAQ> getAllFaqs() {
		return faqDao.findAllFaqs();
	}

	public void createFaq(FAQ faq) {
		faqDao.add(faq);
	}

	public FAQ findById(String id) {
		return faqDao.findById(id, FAQ.class);
	}

	public void updateFaq(FAQ faq) {
		faqDao.update(faq);
	}
}
