package com.poly.admin.controller;

import java.io.File;
import java.util.Date;
import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.poly.Service.UploadService;
import com.poly.convert.impl.AccountModelAndEntityConvert;
import com.poly.dao.CategoryDAO;
import com.poly.dao.ProductDAO;
import com.poly.entity.CategoryEntity;
import com.poly.entity.OrderEntity;
import com.poly.entity.ProductEntity;
import com.poly.model.AccountModel;
import com.poly.utils.SessionUtil;

@Controller
@RequestMapping("admin/product")
public class ProductAController {
	@Autowired
	ProductDAO pdao;
	@Autowired
	UploadService upload;
	@Autowired
	HttpServletRequest request;
	
	@RequestMapping("index")
	public String index(Model model) {
		AccountModel accountModel = (AccountModel) SessionUtil.getInstance().getValue(request, "USER_LOGIN");
		if (accountModel != null) {
			model.addAttribute("userLogin", accountModel.getUsername());
			model.addAttribute("role", accountModel.getRole());
		}
		ProductEntity productEntity = new ProductEntity();
//		productEntity.setAccountOrder(new AccountModelAndEntityConvert().convertToEntity(accountModel));
		productEntity.setCreateDate(new Date());
		model.addAttribute("form", productEntity);
		model.addAttribute("list", pdao.findAll());
		return "admin/product/index";
	}
	
	@RequestMapping("edit/{id}")
	public String edit(Model model, @PathVariable("id") long id) {
		ProductEntity productEntity = new ProductEntity();
		productEntity.setCreateDate(new Date());
		model.addAttribute("form", productEntity);
		model.addAttribute("form", pdao.findById(id).get());
		model.addAttribute("list", pdao.findAll());
		return "admin/product/index";
	}
	
	
	@RequestMapping("create")
	public String create(Model model, 
			@ModelAttribute("form") ProductEntity entity,
			@RequestParam("image_file") MultipartFile image) {
		try {
			File file = upload.save(image, "/static/assets-a/assets/images/products/");
			if(file != null) {
				entity.setImage(file.getName());
			}
			ProductEntity productEntity = new ProductEntity();
			productEntity.setCreateDate(new Date());
			pdao.save(entity);
			model.addAttribute("form", productEntity);
			model.addAttribute("message", "Tạo mới sản phẩm thành công!");
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("error create: " +e);
			model.addAttribute("message", "Tạo mới sản phẩm thất bại!");
		}
		model.addAttribute("list", pdao.findAll());
		return "admin/product/index";
	}
	
	@RequestMapping("update")
	public String update(Model model, 
			@ModelAttribute("form") ProductEntity entity,
			@RequestParam("image_file") MultipartFile image) {
		if(!pdao.existsById(entity.getId())) {
			entity.setId(null);
			model.addAttribute("message", "Sản phẩm không tồn tại!");
		}
		else {
			ProductEntity productEntity = new ProductEntity();
			productEntity.setCreateDate(new Date());
			File file = upload.save(image, "/static/assets-a/assets/images/products/");
			if(file != null) {
				entity.setImage(file.getName());
			}
			pdao.save(entity);
			model.addAttribute("message", "Cập nhật sản phẩm thành công!");
		}
		model.addAttribute("list", pdao.findAll());
		return "admin/product/index";
	}
	
	@RequestMapping("delete")
	public String delete(Model model, @ModelAttribute("form") ProductEntity entity) {
		Optional<ProductEntity> option = pdao.findById(entity.getId());
		if(!option.isPresent()) {
			model.addAttribute("message", "Sản phẩm không tồn tại!");
		}
		else {
			try {
				pdao.delete(option.get());
				model.addAttribute("form", new ProductEntity());
				model.addAttribute("message", "Xóa sản phẩm thành công!");
			} catch (Exception e) {
				e.printStackTrace();
				System.out.println("error delete: " +e);
				model.addAttribute("message", "Sản phẩm này đã mua hàng, không xóa được!");
			}
		}
		model.addAttribute("list", pdao.findAll());
		return "admin/product/index";
	}

	@Autowired
	CategoryDAO cdao;
	@ModelAttribute("categories")
	public List<CategoryEntity> getCategories(){
		return cdao.findAll();// trả về toàn bộ loại
	}
}