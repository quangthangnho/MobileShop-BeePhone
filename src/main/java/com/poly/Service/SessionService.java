package com.poly.Service;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.poly.entity.AccountEntity;

@Service
public class SessionService {
	@Autowired //tiêm  session
	HttpSession session;
	
	// đọc user từ session
	public AccountEntity getUser() {
		return (AccountEntity) session.getAttribute("user");// từ session lấy user có tên là user, đưa về dạng Customer
		
	}
	//lưu user vào session
	public void addUser(AccountEntity user) {// lấy user này bỏ vô
		session.setAttribute("user", user);//session này có tên là user
	}
	
	//xóa user khỏi session
	public void removeUser() {
		session.removeAttribute("user");
	}
	
	//đọc security-url từ session
	public String getSecurityUrl() {
		return (String) session.getAttribute("security-url");
	}
	
//	lưu security-url vào session (ngdung muốn truy cập url vao trang (admin) mà ko có quyền)
	public void addSecurityUrl(String securityUrl) {
		session.setAttribute("security-url", securityUrl);
	}
	
	// xóa security-url khỏi session
	public void removeSecurityUrl() {
		session.removeAttribute("security-url");
	}
	
	//hủy bỏ session hiện tại
	public void clear() {//xóa sạch tất cả những gì có trong session
		session.invalidate();//xóa sạch tất cả những gì có trong session gọi hàm(invalidate)
	}
}
