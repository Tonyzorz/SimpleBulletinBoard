package com.test.taewon.model.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.test.taewon.model.dao.BoardMapper;
import com.test.taewon.model.dto.Board;
import com.test.taewon.model.service.BoardService;

@Service
public class BoardServiceImpl implements BoardService{

	@Autowired
	BoardMapper boardMapper;

	@Override
	public List<Board> selectAll() {
		
		return boardMapper.selectAll();
	}

	@Override
	public void insert(Board board) {
		boardMapper.insert(board);
	}

	@Override
	public Board select(Board board) {
		return boardMapper.select(board);
	}

	@Override
	public void delete(Board board) {
		boardMapper.delete(board);
	}

	@Override
	public void update(Board board) {
		boardMapper.update(board);
	}

	@Override
	public void hit(int board) {
		boardMapper.hit(board);
	}

	@Override
	public void reply(Board board) {
		boardMapper.replyShape(board);
		boardMapper.reply(board);
	}

	@Override
	public List<Board> search(String search, String type) {
		System.out.println(search + type);
		return boardMapper.search(search, type);
	}
	
	
}
