package com.poly.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("home")
public class UpdateInformation {
	
	@GetMapping("/updateInformation")
	public String update() {
		return "home/updateInformation";
		
	}

}
