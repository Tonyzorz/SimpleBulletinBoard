package com.test.taewon.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.test.taewon.model.dto.Board;
import com.test.taewon.model.service.BoardService;
import com.test.taewon.model.service.CommentService;

@Controller
public class BoardController {

	@Autowired
	BoardService boardService;
	
	@Autowired
	CommentService commentService;
	
	@RequestMapping("boardList")
	public String toBoardList(Model model, Board board) {
		model.addAttribute("board", boardService.selectAll());
		return "board/boardList";
	}
	
	@RequestMapping("boardWrite")
	public String toBoardWrite() {
		return "board/boardWrite";
	}
	
	@RequestMapping("boardInsert")
	public String boardInsert(Board board) {
		boardService.insert(board);
		return "redirect:boardList";
	}
	
	@RequestMapping("boardView")
	public String toBoardView(Board board, Model model) {
		boardService.hit(board.getBoardId());
		model.addAttribute("board", boardService.select(board));
		model.addAttribute("comment", commentService.selectAll(board.getBoardId()));
		return "board/boardView";
	}
	
	@RequestMapping("toBoardEdit")
	public String toBoardEdit(Board board, Model model) {
		model.addAttribute("board", boardService.select(board));
		return "board/boardEdit";
	}
	
	@RequestMapping("boardEdit")
	public String boardEdit(Board board) {
		boardService.update(board);
		return "redirect:boardView?boardId=" + board.getBoardId();
	}
	
	@RequestMapping("boardDelete")
	public String boardDelete(Board board) {
		boardService.delete(board);
		return "redirect:boardList";
	}
	
	@RequestMapping("toBoardReply")
	public String toBoardReply(Board board, Model model) {
		model.addAttribute("board", board);
		return "board/boardReply";
	}
	
	@RequestMapping("boardReply")
	public String BoardReply(Board board, HttpServletRequest request) {
		boardService.reply(board);
		return "redirect:boardList";
	}
	
	@RequestMapping("search")
	public String search(@RequestParam("search") String search, @RequestParam("type") String type, Model model) {
		model.addAttribute("result", boardService.search(search, type));
		System.out.println(boardService.search(search, type));
		return "board/search";
	}
}
