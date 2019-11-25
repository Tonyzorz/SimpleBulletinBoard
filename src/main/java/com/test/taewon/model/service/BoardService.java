package com.test.taewon.model.service;

import java.util.List;

import com.test.taewon.model.common.Pagination;
import com.test.taewon.model.dto.Board;

public interface BoardService {

	List<Board> selectAll(Pagination pagination);
	void insert(Board board);
	Board select(Board board);
	void delete(Board board);
	void update(Board board);
	void hit(int board);
	void reply(Board board);
	List<Board> search(String search, String type);
	
	public int getBoardListCnt() throws Exception;
}
