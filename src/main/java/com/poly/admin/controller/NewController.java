package com.poly.admin.controller;

import java.io.File;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.poly.Service.INewService;
import com.poly.Service.UploadService;
import com.poly.convert.impl.AccountModelAndEntityConvert;
import com.poly.model.AccountModel;
import com.poly.model.NewModel;
import com.poly.utils.SessionUtil;

@Controller
@RequestMapping("admin/news")
public class NewController {
	
	@Autowired
	UploadService upload;
	
	private final INewService newService;
	
	
	public NewController(INewService newService) {
		this.newService = newService;
	}

	@GetMapping("/index")
    public String homeNew(Model model) {
        model.addAttribute("newForm", new NewModel());
        model.addAttribute("listNew", newService.findAll());
        return "admin/news/index";
    }
	
	@PostMapping("create")
	public String createNew(Model model, @ModelAttribute("formNew") NewModel newModel, 
			@RequestParam("photo_file") MultipartFile imageFile, HttpServletRequest request ) {
		if(newModel.getTitle().length() > 1 && newModel.getContent().length() > 1) {
			File file = upload.save(imageFile, "/static/images/news/");
        	if(file != null) {
        		newModel.setImage(file.getName());
        	}
        	newModel.setCreateDate(java.time.LocalDate.now()+"");
        	AccountModel accountModel = (AccountModel) SessionUtil.getInstance().getValue(request, "USER_LOGIN");
        	newModel.setAccountEntity(new AccountModelAndEntityConvert().convertToEntity(accountModel));
        	NewModel ac = newService.save(newModel);
        	model.addAttribute("message", "Thêm tin tức thành công!");
		}else {
			model.addAttribute("message", "Các trường không được để trống!");
		}
		model.addAttribute("listNew", newService.findAll());
		return "admin/news/index";
		
	}
	
	@GetMapping("detail")
	public String viewDetail(Model model, @RequestParam("id") Long id) {
		model.addAttribute("listNew", newService.findAll());
		 model.addAttribute("newForm", newService.findById(id));
		 return "admin/news/index";
	}
	@PostMapping("update")
	public String update(Model model, @ModelAttribute("formNew") NewModel newModel
    		, @RequestParam("photo_file") MultipartFile imageFile, HttpServletRequest request) {
		File file = upload.save(imageFile, "/static/images/news/");
    	if(file != null) {
    		newModel.setImage(file.getName());
    	}
    	newModel.setCreateDate(java.time.LocalDate.now()+"");
    	AccountModel accountModel2 = (AccountModel) SessionUtil.getInstance().getValue(request, "USER_LOGIN");
    	newModel.setAccountEntity(new AccountModelAndEntityConvert().convertToEntity(accountModel2));
    	model.addAttribute("message", "Cập nhập tài khoản thành công!");
    	newService.save(newModel);
    	
    	model.addAttribute("listNew", newService.findAll());
    	return "admin/news/index";
	}
	
	@PostMapping("/delete")
    public String deleteNew(Model model, @ModelAttribute("formNew") NewModel newModel) {
    	try {
    		newService.delete(newModel);
    		model.addAttribute("message", "Xoá tài khoản thành công!");
    		model.addAttribute("listNew", newService.findAll());
		} catch (Exception e) {
			model.addAttribute("message", "Tài khoản không tồn tại!");
		}
    	return "admin/news/index";
    }
	

}
