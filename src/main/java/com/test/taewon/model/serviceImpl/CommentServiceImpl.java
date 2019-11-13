package com.test.taewon.model.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.test.taewon.model.dao.CommentMapper;
import com.test.taewon.model.dto.Comment;
import com.test.taewon.model.service.CommentService;

@Service
public class CommentServiceImpl implements CommentService{

	@Autowired
	CommentMapper commentMapper;

	@Override
	public List<Comment> selectAll(int comment) {
		return commentMapper.selectAll(comment);
	}

	@Override
	public void insert(Comment comment) {
		commentMapper.insert(comment);
	}

	@Override
	public void delete(int comment) {
		commentMapper.delete(comment);
	}
	
	
}
