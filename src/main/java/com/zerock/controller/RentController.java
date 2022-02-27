package com.zerock.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.zerock.domain.BoardVO;
import com.zerock.domain.Criteria;
import com.zerock.domain.RentVO;
import com.zerock.domain.UserInfoVO;
import com.zerock.service.BoardService;
import com.zerock.service.RentService;
import com.zerock.service.UserService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@AllArgsConstructor
@RequestMapping("/rent/*")
@Log4j
public class RentController {
	
	private RentService service;
	private BoardService service2;

	

	@GetMapping("/register")
	public void insert(@RequestParam("bno") Long bno,
			RentVO vo,Model model, RedirectAttributes rttr) {
		BoardVO vo1 = service2.get(bno);
	
		model.addAttribute("board",vo1);
	
		System.out.println("도서대출화면");
		
		
				
	}
	
	@PostMapping("/register")
	public String register(@RequestParam("bno") Long bno, RedirectAttributes rttr,RentVO vo) {
		
	
		service.register(vo);
		 
		 log.info("파라미터:" + vo);

		 
		return "redirect:/board/list";
	}
	
	
	

}
