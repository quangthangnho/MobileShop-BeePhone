package com.poly.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.poly.Service.IAccountService;
import com.poly.mailSender.MailerService;
import com.poly.model.AccountModel;
import com.poly.utils.SessionUtil;

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
	
	@GetMapping("/forgot")
	public String forgotPass(HttpServletRequest request,RedirectAttributes model, @RequestParam("email") String email, @RequestParam("g-recaptcha-response") String capcha) {
		System.out.println("email: "+email);
		System.out.println("capcha: "+capcha);
		String message = "Mật khẩu của bạn đã được gởi qua mail";
		AccountModel checkLogin = (AccountModel) SessionUtil.getInstance().getValue(request, "USER_LOGIN");
		if(checkLogin != null) {
			return "redirect:/home/index";
		}
		AccountModel checkEmail = new AccountModel();
		checkEmail.setEmail(email);
		AccountModel accountModel = accountService.findByEmail(checkEmail);
		if(accountModel != null) {
			if(capcha.length() > 1) {
				try {
					String to = accountModel.getEmail();
					String subject = "Cửa hàng điện thoại BeePhone - Lấy lại mật khẩu!";
					String body = "Mật khẩu của bạn là: "+ accountModel.getPassword();
					mailer.send(to, subject, body);
				} catch (Exception e) {
					e.printStackTrace();
					message = "Lỗi, không gửi được email kích hoạt!";			
				}
			} else {
				message = "Vui lòng xác nhận capcha!";	
			}
		}else {
			message = "Lỗi, không tìm thấy địa chỉ mail này!";		
		}
		model.addFlashAttribute("message", message);
		return "redirect:/account/forgotpassword";
		
	}

}
