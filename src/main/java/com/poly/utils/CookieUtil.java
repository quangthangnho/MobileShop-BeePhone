package com.poly.utils;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.poly.model.AccountModel;

public class CookieUtil {
	public static void addCookie(HttpServletResponse resp, AccountModel account) {
		Cookie ckUserName = new Cookie("USER_LOGIN", account.getUsername());
		ckUserName.setMaxAge(24 * 60 * 60);
		resp.addCookie(ckUserName);
	}

	public static void removeCookie(HttpServletResponse resp) {
		Cookie ckUserName = new Cookie("USER_LOGIN", "");
		ckUserName.setMaxAge(0);
		resp.addCookie(ckUserName);
	}

	public static String checkCookie(HttpServletRequest res) {
		Cookie[] cookies = res.getCookies();
		String userAccount = "";
		if (cookies != null) {
			for (Cookie cookie : cookies) {
				if (cookie.getName().equalsIgnoreCase("USER_LOGIN")) {
					userAccount = cookie.getValue();
				}
			}
		}
		return userAccount;
	}

}
