package com.poly.admin.controller;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.poly.dao.CategoryDAO;

import com.poly.entity.CategoryEntity;



@Controller
@RequestMapping("admin/category") //@RequestMapping phần chung g
public class CategoryAController {
	@Autowired
	CategoryDAO cdao;
	
	
	
	@RequestMapping("index")//@RequestMapping phần riêng
	public String index(Model model) {
		model.addAttribute("form", new CategoryEntity());
		model.addAttribute("list", cdao.findAll());
		return "admin/category/index";
	}
	
	@RequestMapping("edit/{id}")
	public String edit(Model model, @PathVariable("id") long id) {
		model.addAttribute("form", cdao.getOne(id));
		model.addAttribute("list", cdao.findAll());
		return "admin/category/index";
	}
	
	@RequestMapping("create")
	public String create(Model model, @ModelAttribute("form") CategoryEntity entity) { 
		try {
			cdao.save(entity);
			model.addAttribute("form", new CategoryEntity());
			model.addAttribute("message", "Tạo mới loại hàng thành công!");
		} catch (Exception e) {
			model.addAttribute("message", "Tạo mới loại hàng thất bại!");
		}
		model.addAttribute("list", cdao.findAll());
		return "admin/category/index";
	}
	
	@RequestMapping("update")
	public String update(Model model, @ModelAttribute("form") CategoryEntity entity) {
		if(!cdao.existsById(entity.getId())) { 
			model.addAttribute("message", "Loại hàng không tồn tại!");
		}
		else {
			cdao.save(entity);
			model.addAttribute("message", "Cập nhật loại hàng thành công!");
		}
		model.addAttribute("list", cdao.findAll());
		return "admin/category/index";
	}
	
	@RequestMapping("delete")
	public String delete(Model model, @ModelAttribute("form") CategoryEntity entity) {
		Optional<CategoryEntity> option = cdao.findById(entity.getId());
		if(!option.isPresent()) {
			model.addAttribute("message", "Loại hàng không tồn tại!");
		}
		else {
			cdao.delete(option.get());
			model.addAttribute("form", new CategoryEntity());
			model.addAttribute("message", "Xóa loại hàng thành công!");
		}
		model.addAttribute("list", cdao.findAll());
		return "admin/category/index";
	}
}
