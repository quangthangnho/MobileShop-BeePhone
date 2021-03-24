package com.poly.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.poly.dao.CategoryDAO;
import com.poly.dao.ProductDAO;
import com.poly.entity.ProductEntity;

@Controller
public class ProductController {
	@Autowired
	CategoryDAO cdao;
	
	@RequestMapping("/home/product")
	public String index(Model model) {
		model.addAttribute("cates", cdao.findAll());
		return "home/product"; 
	}
	
	//lấy sản phẩm theo id
		@RequestMapping("/product/list-by-category/{id}")
		public String list(Model model, @PathVariable("id") Long id) {
			List<ProductEntity> list = cdao.getOne(id).getProducts();
			model.addAttribute("list", list);
			return "product/list";
		}
		
		

}
