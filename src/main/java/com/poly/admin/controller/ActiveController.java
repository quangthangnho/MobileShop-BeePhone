package com.poly.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.poly.Service.IAccountService;
import com.poly.model.AccountModel;

@Controller
@RequestMapping("home")
public class ActiveController {
	
	private final IAccountService accountService;
	public ActiveController(IAccountService accountService) {
		this.accountService = accountService;
	}
	
	@GetMapping("/activate/{id}")
	public String active(@PathVariable("id") Long id ) {
		AccountModel accountModel = accountService.findById(id);
		if(accountModel != null) {
			accountModel.setStatus(1);
			accountService.save(accountModel);
		}
		return "redirect:/home/login";
		
	}

}
