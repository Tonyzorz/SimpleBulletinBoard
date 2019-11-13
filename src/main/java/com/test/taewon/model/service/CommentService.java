package com.test.taewon.model.service;

import java.util.List;

import com.test.taewon.model.dto.Comment;

public interface CommentService {
	List<Comment> selectAll(int boardId);
	void insert(Comment comment);
	void delete(int comment);
}
