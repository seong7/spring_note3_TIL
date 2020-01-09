package com.bit.springNote3.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bit.springNote3.dao.NoteDao;
import com.bit.springNote3.dto.NoteDto;

@Controller
public class NoteController {
	
	private NoteDao dao;
	
	@Autowired
	public void setDao(NoteDao dao) {
		this.dao = dao;
	}
	
	@RequestMapping
	public String noteForm() {
		return "noteForm";
	}
	
	@RequestMapping(value="write")
	public String write(String writer, String content) {  // 변수명만 동일하면 request에서 param 으로 받지 않아도 됨
		dao.write(writer, content);
		return "redirect:list";
	}
	
	@RequestMapping(value="list")
	public String list(Model model) {
		ArrayList<NoteDto> list = dao.list();
		model.addAttribute("list", list);
		return "noteList";
	}
	
	@RequestMapping(value="delete")
	public String delete(int id) {
		dao.delete(id);
		return "redirect:list";
	}
}
