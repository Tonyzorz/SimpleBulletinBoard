package com.test.taewon.model.dto;

import java.sql.Timestamp;

import lombok.Data;

@Data
public class Comment {

	private int commentId;
	private int boardId;
	private String username;
	private String content;
	private Timestamp cDate;
	private int cGroup;
	private int cIndent;
	private int cStep;
	private int cLike;
}
