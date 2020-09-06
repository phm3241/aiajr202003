package com.wifi.comment.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.wifi.comment.dao.CommentDao;
import com.wifi.comment.model.Comment;

@Service
public class CommentEditService {
	
	private CommentDao dao;
	
	@Autowired
	private SqlSessionTemplate template;


	public int editComment(int midx, Comment commentReq) {

		dao = template.getMapper(CommentDao.class);
		
		return dao.editComment(midx, commentReq);
	}

}
