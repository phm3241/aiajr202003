package com.wifi.comment.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.wifi.comment.dao.CommentDao;

/* 댓글 수정 - 원본가져오기*/
@Service
public class CommentViewService {
	
private CommentDao dao;
	
	@Autowired
	private SqlSessionTemplate template;

	public int getViewComment(int cidx) {
		
		dao = template.getMapper(CommentDao.class);
		System.out.println("댓글 수정 원본가져오기 service");
		
		return dao.getViewComment(cidx);
	}
	
	

}
