package com.poly.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.poly.Service.IAccountService;
import com.poly.mailSender.MailerService;
import com.poly.model.AccountModel;

@Controller
@RequestMapping("home")
public class RegistrationController {
	
	@Autowired
	MailerService mailer;
	
	private final IAccountService accountService;
	public RegistrationController(IAccountService accountService) {
		this.accountService = accountService;
	}

	@GetMapping("/registration")
	public String registration() {
		return "home/registration";
	}
	
	@PostMapping("/registration")
	public String regis(Model model, @ModelAttribute("formDangKi") AccountModel accountModel ,HttpServletRequest request) {
		String message = "Tên tài khoản hoặc email đã tồn tại";
		if(accountService.findByUsername(accountModel) == null && accountService.findByEmail(accountModel) == null) {
			AccountModel acModel =  accountService.save(accountModel);	
			try {
				String activateUrl = request.getRequestURL().toString().replace("registration", "activate/" + acModel.getId());
				String to = acModel.getEmail();
				String subject = "Cửa hàng điện thoại BeePhone - Kích hoạt tài khoản";
				String body = "Click to <a href='"+activateUrl+"'>Activate</a> your account!";
				mailer.send(to, subject, body);
			} catch (Exception e) {
				e.printStackTrace();
				message = "Lỗi, không gửi được email kích hoạt!";			
			}
		}else {
			model.addAttribute("message", message);
			return "home/registration";
		}
		return "redirect:/home/login";
	}

}
