package com.poly.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.poly.Service.IAccountService;
import com.poly.model.AccountModel;
import com.poly.model.ChangePasswordModel;
import com.poly.utils.SessionUtil;

@Controller
public class ChangePassword {
	
	private final IAccountService accountService;

	public ChangePassword(IAccountService accountService) {
		this.accountService = accountService;
	}

	@RequestMapping("/home/changepassword")
	public String doimatkhau() {
		return "home/changepassword";
	}

	@PostMapping("/home/changepassword")
	public String changePass(Model model, @ModelAttribute("changePass") ChangePasswordModel changePasswordModel,
			HttpServletRequest request) {
		AccountModel accountModel = (AccountModel) SessionUtil.getInstance().getValue(request, "USER_LOGIN");
		if (accountModel != null) {
			if (changePasswordModel.getPasswordOld().length() >= 1 && changePasswordModel.getPasswordNew().length() >= 1
					&& changePasswordModel.getPasswordNewAgain().length() >= 1) {
				if (accountModel.getPassword().equals(changePasswordModel.getPasswordOld())) {
					if (changePasswordModel.getPasswordNew().equals(changePasswordModel.getPasswordNewAgain())) {
						accountModel.setPassword(changePasswordModel.getPasswordNew());
						accountService.save(accountModel);
						return "redirect:/home/logout";
					} else {
						model.addAttribute("message", "Mật khẩu mới và nhập lại mật khẩu không trùng khớp!");
					}
				} else {
					model.addAttribute("message", "Mật khẩu cũ không đúng");
				}
			} else {
				model.addAttribute("message", "Các trường không được để trống");
			}
		}
		return "home/changepassword";

	}
}
