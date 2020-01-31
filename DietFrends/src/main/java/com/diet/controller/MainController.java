package com.diet.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {
	
	//[Main È­¸é]
	@RequestMapping("main")
	public String main() {
		return "Main/main";
	}
	

}
