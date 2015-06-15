package com.myt.pmg.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.myt.pmg.dao.IpDao;
import com.myt.pmg.model.Ip;


@Service
public class IpService {

	@Autowired
	private IpDao ipDao;

	public IpDao getIpDao() {
		return ipDao;
	}

	public void setIpDao(IpDao ipDao) {
		this.ipDao = ipDao;
	}

	public List<Ip> getAllIpForUser(String userid) {
		return ipDao.getAllIpForUser(userid);
	}

	public Ip getLastAccessIp(String userid) {
		return ipDao.getLastAccessIp(userid);
	}

	public Ip findByIp(String ip, String userid) {
		return ipDao.findByIp(ip, userid);
	}

	public void updateIp(Ip ip) {
		ipDao.updateIp(ip);
	}

	public void saveIp(Ip ip) {
		ipDao.add(ip);
	}
}
