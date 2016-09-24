package com.myt.pmg.service;

import java.io.IOException;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.data.mongodb.gridfs.GridFsTemplate;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.mongodb.BasicDBObject;
import com.mongodb.DBObject;
import com.mongodb.gridfs.GridFSDBFile;
import com.myt.pmg.model.User;

@Service
public class GridFSService {

	@Autowired
	AccountService accountService;

	@Autowired
	GridFsTemplate gridFsTemplate;

	public String save(MultipartFile file, User user) throws IOException {
		DBObject metaData = new BasicDBObject();
		metaData.put("file", file.getOriginalFilename());
		metaData.put("user", user.getEmail());

		return gridFsTemplate.store(file.getInputStream(), file.getOriginalFilename(), file.getContentType(), metaData)
				.getId().toString();
	}

	public void deletepic(User user) {

		GridFSDBFile gridFsdbFile = gridFsTemplate
				.findOne(new Query(Criteria.where("metadata.user").is(user.getEmail())));
		if (gridFsdbFile != null) {
			gridFsTemplate.delete(new Query(Criteria.where("_id").is(user.getPic_id())));
		}
	}

	public String getpic(User user, HttpSession session) throws IOException {

		String picid = user.getPic_id();
		if (picid != null && !picid.isEmpty()) {
			Query query = new Query();
			query.addCriteria(Criteria.where("_id").is(picid));
			GridFSDBFile gFile = gridFsTemplate.findOne(query);

			String dirpath = session.getServletContext().getRealPath("/");

			// String dirpath = System.getProperty("java.io.tmpdir");

			System.out.println("FILE PATH" + dirpath);
			try {
				gFile.writeTo(dirpath + "\\static\\" + gFile.getFilename());
				// gFile.writeTo(dirpath + gFile.getFilename());

				session.setAttribute("path", gFile.getFilename());

				return gFile.getFilename();
			} catch (IOException e) {
				throw e;
			}
		} else {
			// LOGIC TO RETURN PMG'S DEFAULT IMAGE
			return null;
		}

	}

}
