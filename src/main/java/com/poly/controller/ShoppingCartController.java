package com.poly.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ShoppingCartController {
	@RequestMapping("/cart/index")
	public String index() {
		return "cart/index";
	}
}
