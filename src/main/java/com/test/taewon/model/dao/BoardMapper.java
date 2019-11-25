package com.test.taewon.model.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.test.taewon.model.common.Pagination;
import com.test.taewon.model.dto.Board;

public interface BoardMapper {

	List<Board> selectAll(Pagination pagination);
	void insert(Board board);
	Board select(Board board);
	void delete(Board board);
	void update(Board board);
	void hit(int board);
	void reply(Board board);
	void replyShape(Board board);
//	List<Board> search(@Param("search") String search,@Param("type") String type);
	List<Board> search(@Param("search") String search,@Param("type") String type);
	
	int getBoardListCnt();
}
