package com.poly.admin.controller;

import java.util.Optional;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.poly.dao.CategoryDAO;
import com.poly.entity.CategoryEntity;
import com.poly.model.AccountModel;
import com.poly.utils.SessionUtil;

//----------------------------------------------------hypercare
@Controller
@RequestMapping("admin/demo") //@RequestMapping phần chung g
public class DemoAController {
	@Autowired
	CategoryDAO cdao;
	@Autowired
	HttpServletRequest request;
	
	public void  USER_LOGIN(Model model) {
		AccountModel accountModel = (AccountModel) SessionUtil.getInstance().getValue(request, "USER_LOGIN");
		if (accountModel != null) {
			model.addAttribute("userLogin", accountModel.getUsername());
			model.addAttribute("role", accountModel.getRole());
		}
	}
	
	@RequestMapping("index" )//@RequestMapping phần riêng
	public String index(Model model) {
		USER_LOGIN(model);
		model.addAttribute("form", new CategoryEntity());
		model.addAttribute("list", cdao.fillAllCategoryStatus1());
		return "admin/demo/index";
	}
	
	@RequestMapping("edit/{id}")
	public String edit(Model model, @PathVariable("id") long id) {
		model.addAttribute("form", cdao.getOne(id));
		model.addAttribute("list", cdao.fillAllCategoryStatus1());
		return "admin/demo/index";
	}
	
	@RequestMapping("create")
	public String create(Model model,@ModelAttribute("form") CategoryEntity entity) { 
		try {			
			entity.setStatus(1);
			cdao.save(entity);
			model.addAttribute("form", new CategoryEntity());
			model.addAttribute("message", "Tạo mới loại hàng thành công!");
		} catch (Exception e) {
			model.addAttribute("message", "Tạo mới loại hàng thất bại!");
			e.printStackTrace();
			System.out.println(">>>>>>>>>>>>>>>>>>>>>>>>" +e);
		}
		model.addAttribute("list", cdao.fillAllCategoryStatus1());
		return "admin/demo/index";
	}
	
	@RequestMapping("update")
	public String update(Model model, @ModelAttribute("form") CategoryEntity entity) {
		if(!cdao.existsById(entity.getId())) { 
			model.addAttribute("message", "Loại hàng không tồn tại!");
		}
		else {
			entity.setStatus(1);
			cdao.save(entity);
			model.addAttribute("form", new CategoryEntity());
			model.addAttribute("message", "Cập nhật loại hàng thành công!");
		}
		model.addAttribute("list", cdao.fillAllCategoryStatus1());
		return "admin/demo/index";
	}
	
	@RequestMapping("delete")
	public String delete(Model model, @ModelAttribute("form") CategoryEntity entity) {
		Optional<CategoryEntity> option = cdao.findById(entity.getId());
		if(!option.isPresent()) {
			model.addAttribute("message", "Loại hàng không tồn tại!");
		}
		else {
			entity.setStatus(2);
			cdao.save(entity);
			model.addAttribute("form", new CategoryEntity());
			model.addAttribute("message", "Xóa loại hàng thành công!");
		}
		model.addAttribute("list", cdao.fillAllCategoryStatus1());
		return "admin/demo/index";
	}
	
	/**/
	@RequestMapping("edit/index")//@RequestMapping phần riêng
	public String editindex(Model model) {
		USER_LOGIN(model);
		model.addAttribute("form", new CategoryEntity());
		model.addAttribute("list", cdao.fillAllCategoryStatus1());
		return "admin/demo/index";
	}
	@RequestMapping("edit/_thungrac")//@RequestMapping phần riêng
	public String editindex_thungrac(Model model) {
		USER_LOGIN(model);
		model.addAttribute("formt", new CategoryEntity());
		model.addAttribute("listfillAllCategoryStatus2", cdao.fillAllCategoryStatus2());
		return "admin/demo/_thungrac";
	}
	
	@RequestMapping("_thungrac")//@RequestMapping phần riêng
	public String index_thungrac(Model model) {
		USER_LOGIN(model);
		model.addAttribute("formt", new CategoryEntity());
		model.addAttribute("listfillAllCategoryStatus2", cdao.fillAllCategoryStatus2());
		return "admin/demo/_thungrac";
	}
	
//	@RequestMapping("update2")
//	public String update2(Model model, @ModelAttribute("form") CategoryEntity entity) {
//		if(!cdao.existsById(entity.getId())) { 
//			model.addAttribute("message", "Loại hàng không tồn tại!");
//		}
//		else {
//			entity.setStatus(1);
//			cdao.save(entity);
//			model.addAttribute("form", new CategoryEntity());
//			model.addAttribute("message", "Lấy lại loại hàng thành công!");
//		}
//		model.addAttribute("list", cdao.fillAllCategoryStatus1());
//		return "admin/demo/index";
//	}
	
	@RequestMapping("laylai/{id}/{name}")
	public String laylai_thungrac(Model model, @PathVariable("id") long id ,CategoryEntity entity) {
		if(!cdao.existsById(entity.getId())) { 
			model.addAttribute("message", "Loại hàng không tồn tại!");
		}
		else {
			entity.setStatus(1);
			cdao.save(entity);
			model.addAttribute("message", "Lấy lại loại hàng thành công!");
		}
		model.addAttribute("listfillAllCategoryStatus2", cdao.fillAllCategoryStatus2());
		return "admin/demo/_thungrac";
	}
	
	
	@RequestMapping("delete/{id}")// xóa bị lỗi
	public String delete1(Model model,@PathVariable("id") long id, CategoryEntity entity) {
		Optional<CategoryEntity> option = cdao.findById(entity.getId());
		if(!option.isPresent()) {
			model.addAttribute("message", "Loại hàng không tồn tại!");
		}
		else {
			cdao.delete(option.get());
		
			model.addAttribute("message", "Xóa loại hàng thành công!");
		}
		model.addAttribute("listfillAllCategoryStatus2", cdao.fillAllCategoryStatus2());
		return "admin/demo/_thungrac";
	}

	/**/
	
}