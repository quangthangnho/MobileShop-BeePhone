package com.poly;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.view.UrlBasedViewResolver;
import org.springframework.web.servlet.view.tiles3.TilesView;
import org.springframework.web.servlet.view.tiles3.TilesConfigurer;

@Configuration //cấu hình 2 bean (ViewResolver), (TilesConfigurer)
public class TilesConfig {
	@Bean("viewResolver")
	public ViewResolver getViewResolver() { // để nạp thư viện đã khai báo trong pom, để thay ViewResolver khác
		UrlBasedViewResolver resolver = new UrlBasedViewResolver();
		resolver.setViewClass(TilesView.class);
		return resolver;
	}

	@Bean("tilesConfigurer")
	public TilesConfigurer getTilesConfig() {// khai báo cho nó file WEB-INF/tiles.xml về layout
		TilesConfigurer configurer = new TilesConfigurer();
		configurer.setDefinitions("/WEB-INF/tiles.xml");
		return configurer;
				
			
	}

}
