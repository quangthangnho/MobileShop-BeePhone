package com.poly.admin.controller;

import java.util.Date;
import java.util.Map;
import java.util.Optional;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.poly.convert.impl.AccountModelAndEntityConvert;
import com.poly.dao.CategoryDAO;
import com.poly.entity.CategoryEntity;
import com.poly.entity.OrderEntity;
import com.poly.entity.ProductEntity;
import com.poly.model.AccountModel;
import com.poly.utils.SessionUtil;

//----------------------------------------------------hypercare
@Controller
@RequestMapping("admin/category") //@RequestMapping phần chung g
public class CategoryAController {
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
		return "admin/category/index";
	}
	
	@RequestMapping("edit/{id}")
	public String edit(Model model, @PathVariable("id") long id) {
		model.addAttribute("form", cdao.getOne(id));
		model.addAttribute("list", cdao.fillAllCategoryStatus1());
		return "admin/category/index";
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
		return "admin/category/index";
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
		return "admin/category/index";
	}
	
	@RequestMapping("delete")
	public String deletet(Model model, @ModelAttribute("form") CategoryEntity entity) {
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
		return "admin/category/index";
	}
	

	/*------------------------------thùng rác*/	
	@RequestMapping("_thungrac")//@RequestMapping phần riêng
	public String index_thungrac(Model model) {
		USER_LOGIN(model);
		model.addAttribute("formt", new CategoryEntity());
		model.addAttribute("listfillAllCategoryStatus2", cdao.fillAllCategoryStatus2());
		return "admin/category/_thungrac";
	}
	
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
		return "admin/category/_thungrac";
	}
	
	
	@RequestMapping("delete/{id}")//
	public String deletethungrac(Model model,@PathVariable("id") long id, CategoryEntity entity) {
		Optional<CategoryEntity> option = cdao.findById(entity.getId());
		if(!option.isPresent()) {
			model.addAttribute("message", "Loại hàng không tồn tại!");
		}
		else {
			cdao.delete(option.get());
		
			model.addAttribute("message", "Xóa loại hàng thành công!");
		}
		model.addAttribute("listfillAllCategoryStatus2", cdao.fillAllCategoryStatus2());
		return "admin/category/_thungrac";
	}
	

	/*------------------------------thùng rác*/
	
	
	/*validation*/
//	public String getEmployeesByIdAndNameWithMapVariable(@PathVariable Map<String, String> pathVarsMap) {
//	    String id = pathVarsMap.get("id");
//	    String name = pathVarsMap.get("name");
//	    if (id != null && name != null) {
//	        return "ID: " + id + ", name: " + name;
//	    } else {
//	        return "Missing Parameters";
//	    }
//	}
}