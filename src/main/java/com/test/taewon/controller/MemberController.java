package com.test.taewon.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;

import com.test.taewon.model.dto.Boardmember;
import com.test.taewon.model.service.MemberService;

@Controller
public class MemberController {

	@Autowired 
	MemberService memberService;

	@RequestMapping("toLogin")
	public String toLogin() {
		
		return "member/login";
	}
	
	@RequestMapping("loginCheck")
	public String login(Boardmember member, HttpSession session, Model model) {
		if(memberService.checkMember(member)) {
			model.addAttribute("success", "Login Success!");
			session.setAttribute("session", member);
			return "home";
		} else {
			model.addAttribute("fail", "Try reentering username or password");
			return "member/login";
		}
	}
	
	@RequestMapping("toRegister")
	public String toRegister() {
		return "member/register";
	}
	
	@RequestMapping("register")
	public String register(Boardmember member, Model model, BindingResult bindingResult) {
		memberService.registerMember(member);
		if(bindingResult.hasErrors()) {
			return "member/register";
		} else {
			model.addAttribute("success", "Register Success! Now login");
		}
		
		
		return "home";
	}
	
	@RequestMapping("logout")
	public String logout(HttpSession session, Model model) {
		session.invalidate();
		model.addAttribute("success", "Logout Success!");
		return "home";
	}
	
	
}
