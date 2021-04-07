package com.poly.admin.controller;

import java.util.Optional;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.poly.dao.CategoryDAO;

import com.poly.entity.CategoryEntity;
import com.poly.entity.OrderEntity;
import com.poly.model.AccountModel;
import com.poly.utils.SessionUtil;



@Controller
@RequestMapping("admin/category") //@RequestMapping phần chung g
public class CategoryAController {
	@Autowired
	CategoryDAO cdao;
	@Autowired
	HttpServletRequest request;
	
	
	
	@RequestMapping("index")//@RequestMapping phần riêng
	public String index(Model model) {
		AccountModel accountModel = (AccountModel) SessionUtil.getInstance().getValue(request, "USER_LOGIN");
		if (accountModel != null) {
			model.addAttribute("userLogin", accountModel.getUsername());
			model.addAttribute("role", accountModel.getRole());
		}
		model.addAttribute("form", new CategoryEntity());
		model.addAttribute("list", cdao.fillAllStatus1());
		return "admin/category/index";
	}
	
	@RequestMapping("edit/{id}")
	public String edit(Model model, @PathVariable("id") long id) {
		
		model.addAttribute("form", cdao.getOne(id));
		model.addAttribute("list", cdao.fillAllStatus1());
		return "admin/category/index";
	}
	
	/*thung rac*/
	@RequestMapping("_thungRac")//@RequestMapping phần riêng
	public String index1(Model model) {
		model.addAttribute("form", new CategoryEntity());
		model.addAttribute("liststatus2", cdao.fillAllStatus2());
		return "admin/category/_thungRac";
	}
	/**/
	
	@RequestMapping("create")
	public String create(Model model, @ModelAttribute("form") CategoryEntity entity, HttpServletRequest request,
			HttpServletResponse response) { 
		try {
			
			cdao.save(entity);
			if(entity.getName().length() == 0 ) {
				model.addAttribute("form", new CategoryEntity());
				model.addAttribute("message", "Tên loại hàng không được để trống!");
			}else {
				model.addAttribute("message", "Tạo mới loại hàng thành công!");
			}
			
		} catch (Exception e) {
			model.addAttribute("message", "Tạo mới loại hàng thất bại!");
		}
		model.addAttribute("list", cdao.fillAllStatus1());
		return "admin/category/index";
	}
	
	@RequestMapping("update")
	public String update(Model model, @ModelAttribute("form") CategoryEntity entity) {
		entity.setStatus(1);
		if(!cdao.existsById(entity.getId())) { 
			model.addAttribute("message", "Loại hàng không tồn tại!");
		}
		else {
			cdao.save(entity);
			model.addAttribute("message", "Cập nhật loại hàng thành công!");
		}
		model.addAttribute("list", cdao.fillAllStatus1());
		return "admin/category/index";
	}
	

	@RequestMapping("delete")
	public String delete(Model model, @ModelAttribute("form") CategoryEntity entity) {
		entity.setStatus(2);
		Optional<CategoryEntity> option = cdao.findById(entity.getId());
		if(!option.isPresent()) {
			model.addAttribute("message", "Loại hàng không tồn tại!");
		}
		else {
			cdao.save(entity);
			model.addAttribute("form", new CategoryEntity());
			model.addAttribute("message", "Xóa loại hàng thành công!");
		}
		model.addAttribute("list", cdao.fillAllStatus1());
		return "admin/category/index";
	}
	
}
