package com.poly.utils;

import java.net.URLEncoder;
import java.util.Base64;
import java.util.UUID;

/**
 * Lớp này chứa các hàm tiện ích hỗ trợ xử lý chuỗi
 * @author Nguyễn Nghiệm
 * @version 1.0
 */
public class StrUtils {
	/**
	 * Mã hóa chuỗi dạng Base64
	 * @param text chuỗi cần mã hóa
	 * @return chuỗi đã mã hóa
	 */
	public static String encode64(String text) {/* đưa text vào */
		return Base64.getEncoder().encodeToString(text.getBytes());/* từ text vào đổi thành các mã by, Base64.getEncoder().encodeToString(hàm java có sẵn) gọi và lấy đk chuỗi đã mã hóa  */
	}
	/**
	 * Giải mã chuỗi mã hóa dạng Base64
	 * @param encodedText chuỗi cần giải mã
	 * @return chuỗi đã giải mã
	 */
	public static String decode64(String encodedText) {
		return new String(Base64.getDecoder().decode(encodedText));
	}
	/**
	 * Mã hóa URL để redirect 
	 * @param queryString chuỗi cần mã hóa
	 * @return chuỗi đã mã hóa
	 */
	public static String encodeUrl(String queryString) {
		try {
			return URLEncoder.encode(queryString, "utf-8");
		} catch (Exception e) {
			return queryString;
		}
	}
	/**
	 * Lấy chuỗi duy nhất ngẫu nhiên hệ 16
	 */
	public static String getId() {
		return Integer.toHexString(UUID.randomUUID().hashCode());
	}
}