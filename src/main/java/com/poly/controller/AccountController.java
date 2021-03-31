package com.poly.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.poly.Service.CookieService;
import com.poly.Service.SessionService;
import com.poly.Service.UploadService;
import com.poly.dao.AccountDAO;
import com.poly.entity.AccountEntity;
import com.poly.utils.JsonUtils;
import com.poly.utils.StrUtils;

/*Phương thức Get là chuyển sang form
 * Phương thức Post xử lý thông tin (code)
 */
@Controller
public class AccountController {
	@Autowired
	AccountDAO adao;// tiêm
	@Autowired
	SessionService session;
	@Autowired
	CookieService cookie;
//	@Autowired
//	MailerService mailer;
	@Autowired
	UploadService upload;

	@GetMapping("/account/login")
	public String login(Model model) {
		String value = cookie.getValue("user","");
		if (value.length() > 0) {
			String json = StrUtils.decode64(value);
			model.addAttribute("map", JsonUtils.toObject(json,
					Map.class));
		} else {
			model.addAttribute("map", null);
		}
		return "account/login";
	}

	@PostMapping("/account/login") /* đăng nhập admin */
	public String login(Model model,
//			@RequestParam("username") String username,
			@RequestParam("id") Long id,
			@RequestParam("password") String password,
			@RequestParam(name = "remember", defaultValue = "false") boolean remember) {
		try {
			AccountEntity user = adao.getOne(id);
			if (!user.getStatus()) {
				model.addAttribute("message", "Tài khoản chưa kích hoạt");
			} else if (!user.getPassword().equals(password)) {
				model.addAttribute("message", "Sai mật khẩu");
			} else {
				session.addUser(user);
				model.addAttribute("message", "Đăng nhập thành công");
				if (remember) {
					Map<Object, Object> map = new HashMap<Object, Object>() {
//					Map<String, String> map = new HashMap<String, String>() {
						{
							put("email", user.getEmail());
							put("password", user.getPassword());
						}
					};

					String json = JsonUtils.fromObject(map);
					cookie.create("user", StrUtils.encode64(json),30);
				} else {
					cookie.delete("user");
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
			System.err.println("Error Sai tên đăng nhập: "+e);
			model.addAttribute("message", "Sai tên đăng nhập");
		}
		return "account/login";
	}

	
	// đăng xuất admin
	@GetMapping("/account/logoff") // url để map
	public String logoff() {
		session.clear();// gọi clear bên sessionService
		return "redirect:/home/index";// trẩ về trang chủ
	}
	
}