package com.wifi.comment.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.wifi.comment.model.Comment;
import com.wifi.comment.service.CommentDelService;
import com.wifi.comment.service.CommentEditService;
import com.wifi.comment.service.CommentListService;
import com.wifi.comment.service.CommentRegService;

@RestController
@RequestMapping("/comment")
public class CommentController {
	
	/* 댓글 리스트 */
	@Autowired
	private CommentListService listService;
	
	/* 댓글 등록 */
	@Autowired
	private CommentRegService regService;
	
	/* 댓글 수정 */
	@Autowired
	private CommentEditService editService;
	
	/* 댓글 삭제 */
	@Autowired
	private CommentDelService delService;
	
	
	
	
	
	
	
	/* 댓글 리스트 */
	@GetMapping
	public List<Comment> getComment(){
		
		return listService.getComment();
	}
	
	/* 댓글 등록 */
	@PostMapping
	public int regComment(Comment commentReq){
		
		return regService.regComment(commentReq);
		
	}
	
	/* 댓글 수정*/
	@PutMapping
	public int editComment(HttpSession session, Comment commentReq){
		
		int midx = (int) session.getAttribute("loginMidx");
		commentReq.setMidx(midx);
		
		return editService.editComment(midx, commentReq);
		
	}
	
	/* 댓글 삭제 */
	@PutMapping("/{cidx}")
	public int delComment(@PathVariable("cidx") int cidx){
		
		
		return delService.delComment(cidx);
		
	}
	
	
	
	
	
	
	
	
	
	
	
	

}
