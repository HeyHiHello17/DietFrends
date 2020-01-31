package com.diet.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.diet.dto.MemberDTO;
import com.diet.service.IMemberService;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

@Controller
public class HomeController {
	
	@Autowired
	private IMemberService mService;
	
	//[Home 화면]
	@RequestMapping("/")
	public String home(){
		return "Home/home";
	}
	
	//[로그인 구현]
	@ResponseBody
	@RequestMapping(value="login", produces = "application/json;charset=utf8")
	public String login(MemberDTO Mdto) throws JsonProcessingException {
	
		int loginCheck = mService.Login(Mdto);		
		
	    Map<String, Object> map = new HashMap<String, Object>();
	    
			if(loginCheck == 1) {
				map.put("check" , "성공");
			}else if(loginCheck == 2) {
				map.put("check" , "비밀번호가 일치하지 않습니다 :P");
			}else if(loginCheck == 0) {
				map.put("check" , "존재하지 않는 계정입니다 :P");
			}
			
			ObjectMapper mapper = new com.fasterxml.jackson.databind.ObjectMapper();
			String logincheck = mapper.writeValueAsString(map);
			
			return logincheck;
			
	}
	



}
