package com.wifi.comment.dao;

import java.util.List;

import com.wifi.comment.model.Comment;

public interface CommentDao {

	/* 댓글 리스트 */
	List<Comment> getComment();
	
	/* 댓글 등록 */
	int regComment(Comment commentReq);
	
	/* 댓글 수정 */
	int editComment(int midx, Comment commentReq);
	
	/* 댓글 삭제 */
	int delComment(int cidx);

}
