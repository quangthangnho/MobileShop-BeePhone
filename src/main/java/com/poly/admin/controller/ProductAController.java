package com.poly.admin.controller;

import java.io.File;
import java.util.Date;
import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.poly.Service.PagerService;
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
	
	public void  USER_LOGIN(Model model) {
		AccountModel accountModel = (AccountModel) SessionUtil.getInstance().getValue(request, "USER_LOGIN");
		if (accountModel != null) {
			model.addAttribute("userLogin", accountModel.getUsername());
			model.addAttribute("role", accountModel.getRole());
		}
	}
	
	@RequestMapping("index")
	public String index(Model model) {
		USER_LOGIN(model);
		ProductEntity productEntity = new ProductEntity();
		productEntity.setCreateDate(new Date());
		model.addAttribute("form", productEntity);
		model.addAttribute("list", pdao.fillAllProductStatus1());
		return "admin/product/index";
	}
	
	@RequestMapping("edit/{id}")
	public String edit(Model model, @PathVariable("id") long id) {
		ProductEntity productEntity = new ProductEntity();
		productEntity.setCreateDate(new Date());
		model.addAttribute("form", productEntity);
		model.addAttribute("form", pdao.findById(id).get());
		model.addAttribute("list", pdao.fillAllProductStatus1());
		return "admin/product/index";
	}
	
	
	@RequestMapping("create")
	public String create(Model model, 
			@ModelAttribute("form") ProductEntity entity,
			@RequestParam("image_file") MultipartFile image) {
		try {
			File file = upload.save(image, "/static/images/products/");
			if(file != null) {
				entity.setImage(file.getName());
			}
			ProductEntity productEntity = new ProductEntity();
			productEntity.setCreateDate(new Date());
			entity.setStatus(1);
			pdao.save(entity);
			model.addAttribute("form", productEntity);
			model.addAttribute("message", "T???o m???i s???n ph???m th??nh c??ng!");
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("error create: " +e);
			model.addAttribute("message", "T???o m???i s???n ph???m th???t b???i!");
		}
		model.addAttribute("list", pdao.fillAllProductStatus1());
		return "admin/product/index";
	}
	
	@RequestMapping("update")
	public String update(Model model, 
			@ModelAttribute("form") ProductEntity entity,
			@RequestParam("image_file") MultipartFile image) {
		if(!pdao.existsById(entity.getId())) {
			entity.setId(null);
			model.addAttribute("message", "S???n ph???m kh??ng t???n t???i!");

		}
		else {
			ProductEntity productEntity = new ProductEntity();
			productEntity.setCreateDate(new Date());
			File file = upload.save(image, "/static/images/products/");
			if(file != null) {
				entity.setImage(file.getName());
			}			
			entity.setStatus(1);
			pdao.save(entity);
			model.addAttribute("message", "C???p nh???t s???n ph???m th??nh c??ng!");
		}
		model.addAttribute("list", pdao.fillAllProductStatus1());
		return "admin/product/index";
	}
	
	@RequestMapping("delete")
	public String delete(Model model, @ModelAttribute("form") ProductEntity entity) {
		Optional<ProductEntity> option = pdao.findById(entity.getId());
		if(!option.isPresent()) {
			model.addAttribute("message", "S???n ph???m kh??ng t???n t???i!");
		}
		else {
			try {
				entity.setStatus(2);
				pdao.save(entity);
//				pdao.delete(option.get());
				model.addAttribute("form", new ProductEntity());
				model.addAttribute("message", "X??a s???n ph???m th??nh c??ng!");
			} catch (Exception e) {
				e.printStackTrace();
				System.out.println("error delete: " +e);
				model.addAttribute("message", "S???n ph???m n??y ???? mua h??ng, kh??ng x??a ???????c!");
			}
		}
		model.addAttribute("list", pdao.fillAllProductStatus1());
		return "admin/product/index";
	}

	@Autowired
	CategoryDAO cdao;
	@ModelAttribute("categories")
	public List<CategoryEntity> getCategories(){
		return cdao.fillAllCategoryStatus1();// tr??? v??? to??n b??? lo???i
	}
	
	
	/*------------------------------th??ng r??c*/
	@RequestMapping("_thungrac")//@RequestMapping ph???n ri??ng
	public String index_thungrac(Model model) {
		USER_LOGIN(model);
		model.addAttribute("form", new CategoryEntity());
		model.addAttribute("listfillAllProductStatus2", pdao.fillAllProductStatus2());
		return "admin/product/_thungrac";
	}
	
	@RequestMapping("laylai")
	public String laylai_thungrac(Model model, 
			@ModelAttribute("form") ProductEntity entity,
			@RequestParam("image_file") MultipartFile image) {
		if(!pdao.existsById(entity.getId())) {
			entity.setId(null);
			model.addAttribute("message", "S???n ph???m kh??ng t???n t???i!");
		}
		else {
			ProductEntity productEntity = new ProductEntity();
			productEntity.setCreateDate(new Date());
			File file = upload.save(image, "/static/images/products/");
			if(file != null) {
				entity.setImage(file.getName());
			}
			entity.setStatus(1);
			pdao.save(entity);
			model.addAttribute("message","L???y l???i s???n ph???m th??nh c??ng!");
		}
		model.addAttribute("list", pdao.fillAllProductStatus1());
		return "admin/product/index";
	}
	
	@RequestMapping("delete/{id}")
	public String delete_thungrac(Model model, @PathVariable("id") long id,  @ModelAttribute("form") ProductEntity entity) {
		Optional<ProductEntity> option = pdao.findById(entity.getId());
		if(!option.isPresent()) {
			model.addAttribute("message", "S???n ph???m kh??ng t???n t???i!");
		}
		else {
			try {

				pdao.delete(option.get());
				model.addAttribute("form", new ProductEntity());
				model.addAttribute("message", "X??a s???n ph???m th??nh c??ng!");
			} catch (Exception e) {
				e.printStackTrace();
				System.out.println("error delete: " +e);
				model.addAttribute("message", "S???n ph???m n??y ???? mua h??ng, kh??ng x??a ???????c!");
			}
		}
		model.addAttribute("listfillAllProductStatus2", pdao.fillAllProductStatus2());
		return "admin/product/_thungrac";
	}
	
	
	/*------------------------------th??ng r??c*/
}