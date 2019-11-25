package com.test.taewon.controller;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

@ControllerAdvice
public class ErrorController {
	
	@ExceptionHandler(RuntimeException.class)
	public String exceptionHanlder(Model model, Exception e) {
		model.addAttribute("exception", e);
		return "error/exception";
	}
}
