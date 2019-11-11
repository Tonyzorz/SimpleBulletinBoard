package com.test.taewon.model.dto;

import java.sql.Timestamp;

import lombok.Data;

@Data
public class Board {
	
	private int boardId;
	private String bUsername;
	private String bContent;
	private Timestamp bDate;
	private int bHit;
	private int bGroup;
	private int bIndent;
	private int bStep;
	
}
