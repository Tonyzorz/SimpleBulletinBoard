package com.test.taewon.model.dao;

import java.util.List;

import com.test.taewon.model.dto.Comment;

public interface CommentMapper {
	void insert(Comment comment);
	List<Comment> selectAll(int comment);
	void delete(int comment);
}
