package com.zerock.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;



import com.zerock.domain.Criteria;
import com.zerock.domain.UserInfoVO;
import com.zerock.service.UserService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@AllArgsConstructor
@RequestMapping("/UserInfo/*")
@Log4j
public class UserInfoController {
	
	private UserService service;
	
	@GetMapping("/GetLogin")
	public String Getlogin(UserInfoVO vo, HttpServletRequest req, RedirectAttributes rttr) throws Exception{
	
		System.out.println("로그인화면");
		return "/UserInfo/GetLogin";
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(UserInfoVO vo, HttpServletRequest req, RedirectAttributes rttr) throws Exception{
		
		HttpSession session = req.getSession();
		UserInfoVO login = service.login(vo);
		
		if(login == null) {
			session.setAttribute("member", null);
			rttr.addFlashAttribute("msg", false);
		}else {
			session.setAttribute("member", login);
		}
		
		return "redirect:/";
	}
	
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpSession session) throws Exception{
		
		session.invalidate();
		
		return "redirect:/";
	}


	@GetMapping("/Getregister")
	public ModelAndView insert(UserInfoVO vo) {
		
		System.out.println("회원가입화면");
		return new ModelAndView("/UserInfo/register");
				
	}
	
	@PostMapping("/register")
	public String register(UserInfoVO vo, RedirectAttributes rttr) {
		
			
		 service.register(vo);
		 
		 log.info("grade:" + vo.getGrade());


		return "redirect:/";
	}
	

}
