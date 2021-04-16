//package com.poly;
//
//import java.util.Locale;
//
//import org.springframework.context.annotation.Bean;
//import org.springframework.context.annotation.Configuration;
//import org.springframework.context.support.ReloadableResourceBundleMessageSource;
//import org.springframework.web.servlet.i18n.CookieLocaleResolver;
//import org.springframework.web.servlet.i18n.LocaleChangeInterceptor;
//
//import com.poly.interceptor.SecurityInterceptor;
//import com.sun.xml.bind.v2.runtime.unmarshaller.Intercepter;
//
//@Configuration
//public class I18nConfign {
//	@Bean("mesageSource")
//	public MesageSource getMesageSource() {
//		ReloadableResourceBundleMessageSource ms = new ReloadableResourceBundleMessageSource();
//		ms.addBasenames("classpath:i18n/layout","classpath:i18n/home","classpath:i18n/customer");
//		ms.setDefaultEncoding("utf-8");
//		return ms;
//	}
//	
//	@Bean("localeResolver")
//	public LocaleResolver getLocaleResolver() {
//		CookieLocaleResolver resolver = new CookieLocaleResolver();
//		resolver.setCookiePath("/");
//		resolver.setCookieMaxAge(30 * 24 * 60 * 60);// 30 ngày
//		resolver.setDefaultLocale(new Locale("vi"));// để mặc định ngông ngữ
//		return resolver;
//	}
//}
