package com.poly.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.poly.Service.IAccountService;
import com.poly.model.AccountModel;
import com.poly.model.LoginModel;
import com.poly.utils.CookieUtil;
import com.poly.utils.SessionUtil;

@Controller
@RequestMapping("account")
public class LoginController {

	private final IAccountService accountService;

	public LoginController(IAccountService accountService) {
		this.accountService = accountService;
	}

	@GetMapping("/login")
	public String home(HttpServletRequest request, Model model) {
		AccountModel accountModel = (AccountModel) SessionUtil.getInstance().getValue(request, "USER_LOGIN");
		if (accountModel != null) {
			return "redirect:/home/index";
			
		}

		return "account/login";
	}

	@PostMapping("/login")
	public String login(Model model, @ModelAttribute("formLogin") LoginModel loginModel, HttpServletRequest request,
			HttpServletResponse response) {
		if (loginModel.getUsername().length() == 0 && loginModel.getPassword().length() == 0) {
			model.addAttribute("message", "Tên đăng nhập và mật khẩu không được để trống!");
			return "account/login";
		}
		AccountModel acModel = new AccountModel();
		acModel = accountService.findByUsernameAndPassword(loginModel);
		if (acModel == null) {

			model.addAttribute("message", "Tên đăng nhập hoặc mật khẩu không đúng!");
			return "account/login";
		} else {
			if(acModel.getStatus() == 1) {
				if (loginModel.getRemember() == null) {
					SessionUtil.getInstance().putValue(request, "USER_LOGIN", acModel);

				} else {
					CookieUtil.addCookie(response, acModel);
					SessionUtil.getInstance().putValue(request, "USER_LOGIN", acModel);
				}
				return "redirect:/home/index";
			}else {
				model.addAttribute("message", "Tài khoản chưa được kích hoạt!");
				return "account/login";
			}
		}

	}

	@GetMapping("/logout")
	public String logout(HttpServletRequest request, HttpServletResponse response) {
		CookieUtil.removeCookie(response);
		SessionUtil.getInstance().removeValue(request, "USER_LOGIN");
		return "redirect:/account/login";
	}

}