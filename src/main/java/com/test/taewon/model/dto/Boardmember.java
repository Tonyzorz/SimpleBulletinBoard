package com.test.taewon.model.dto;

import java.sql.Timestamp;

import lombok.Data;

@Data
public class Boardmember {
	private int memberId;
	private String username;
	private String password;
	private String email;
	private String gender;
	private Timestamp joinDate;
	private Timestamp birthday;
	
}
