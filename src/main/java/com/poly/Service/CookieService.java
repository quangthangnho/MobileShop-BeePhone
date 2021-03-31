package com.poly.Service;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CookieService {
	@Autowired
	HttpServletRequest request;
	@Autowired// tiêm
	HttpServletResponse response;
	
	
	/*tạo mã hóa và gửi cookie về client*/
	public Cookie create(String name, String value, int days) {//
		Cookie cookie = new Cookie(name, value);// tạo cookie có 2 giá trị name, value
		cookie.setMaxAge(days*24*60*60);// dặt thời hạn day*1h*60p*60s
		cookie.setPath("/");// đường dẫn / có hiệu lực toàn bộ website
		response.addCookie(cookie);// gửi cookie về client đê luu lại
		return cookie;
	}
	
	/*xóa cookie*/
	public void delete(String name) {// xóa cookie có nghĩa là tạo cookie vs thời hạn bằng 0
		this.create(name, "", 0);
	}
	
	/*Đọc và giải mã cookie*/
	public String getValue(String name, String defaultValue) {// đưa name(tên) vào để lấy getValue ra, nếu cookie ko tồn tại thì lấy dk giá trị mặc định(defaultValue)
		Cookie[] cookies = request.getCookies();// từ request lấy toàn bộ getCookies() ra
		if(cookies != null) {// kiểm tra có hay ko
			for(Cookie cookie :cookies) {// nếu có thì duyệt qua từng cookie 1
				if(cookie.getName().equalsIgnoreCase(name)) {// sau đó lấy tên cookie so với name mà cookie muốn lấy String name (ở hàm getValue)
					return cookie.getValue();// nếu thầy thì return về giá trị cookie
				}
			}
		}
		return defaultValue;// ko thấy return về giá trị mặc định 
	}

}
