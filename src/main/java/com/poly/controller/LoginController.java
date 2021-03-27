package com.poly.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/home/login")
public class LoginController {
	
	@PostMapping("")
	public String login() {
		System.out.println("day la tring login");
		return null;
		
	}

}
