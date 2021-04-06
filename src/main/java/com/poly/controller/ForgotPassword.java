package com.poly.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.poly.Service.IAccountService;
import com.poly.mailSender.MailerService;

@Controller
@RequestMapping("account")
public class ForgotPassword {
	
	@Autowired
	MailerService mailer;
	
	private final IAccountService accountService;
	public ForgotPassword(IAccountService accountService) {
		this.accountService = accountService;
	}
	
	@GetMapping("/forgotpassword")
	public String forgot() {
		return "account/forgotpassword";
	}

}
