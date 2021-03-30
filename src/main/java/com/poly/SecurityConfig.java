package com.poly;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import com.poly.interceptor.SecurityInterceptor;

@Configuration
public class SecurityConfig implements WebMvcConfigurer {
	@Autowired
	SecurityInterceptor interceptor;
	
	@Override
	public void addInterceptors(InterceptorRegistry registry) {	
		registry.addInterceptor(interceptor)
			.addPathPatterns("/account/change", "/account/edit", "/account/logoff", "/order/**")
			.addPathPatterns("/admin/**").excludePathPatterns("/admin/report/inventory-by-category");
	}
}