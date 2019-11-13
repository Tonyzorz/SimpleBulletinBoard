package com.test.taewon.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.test.taewon.model.dto.Comment;
import com.test.taewon.model.service.CommentService;

@Controller
public class CommentController {

	@Autowired
	CommentService commentService;
	
	@RequestMapping("postComment")
	public String postComment(Comment comment) {
		commentService.insert(comment);
		return "redirect:boardView?boardId=" + comment.getBoardId();
	}
	
	@RequestMapping("deleteComment")
	public String deleteComment(Comment comment) {
		commentService.delete(comment.getCommentId());
		return "redirect:boardView?boardId="+ comment.getBoardId();
	}
}
