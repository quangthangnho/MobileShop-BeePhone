package com.poly.admin.controller;

import java.io.File;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.poly.Service.IAccountService;
import com.poly.Service.UploadService;
import com.poly.model.AccountModel;

@Controller
@RequestMapping("admin/customer")
public class AccountCustomerController {
	
	@Autowired
	UploadService upload;

	private final IAccountService accountService;

	public AccountCustomerController(IAccountService accountService) {
	        this.accountService = accountService;
	    }

	@GetMapping("/index")
	public String homeCustomer(Model model) {
		List<AccountModel> listCustomer = accountService.findAllByRole("USER");
		model.addAttribute("listCustomer", listCustomer);
		return "admin/customer/index";
	}
	
	@GetMapping("/detail")
    public String adminDetail(Model model, @RequestParam("id") Long id){
       model.addAttribute("indexForm", accountService.findById(id));
        model.addAttribute("listCustomer", accountService.findAllByRole("USER"));
        return "admin/customer/index";
    }

    
    @PostMapping("/detail")
    public String updateAdmin(Model model, @ModelAttribute("form") AccountModel accountModel
    		, @RequestParam("photo_file") MultipartFile imageFile) {
		
		File file = upload.save(imageFile, "/static/images/account/");
    	if(file != null) {
    		accountModel.setImage(file.getName());
    	}
    	model.addAttribute("message", "Cập nhập tài khoản thành công!");
    	accountService.save(accountModel);
    	
    	model.addAttribute("listCustomer", accountService.findAllByRole("USER"));
    	return "admin/customer/index";
    	
    }
    
    @PostMapping("/delete")
    public String deleteAdmin(Model model, @ModelAttribute("form") AccountModel accountModel) {
    	try {
    		accountService.delete(accountModel);
    		model.addAttribute("message", "Xoá khách hàng thành công!");
    	model.addAttribute("listCustomer", accountService.findAllByRole("USER"));
		} catch (Exception e) {
			model.addAttribute("message", "Khách hàng này không xóa được!");
		}
		return "admin/customer/index";
    }
    
    @PostMapping("/create")
    public String createAdmin(Model model, @ModelAttribute("form") AccountModel accountModel,
    		@RequestParam("photo_file") MultipartFile imageFile) {
 	
		File file = upload.save(imageFile, "/static/images/account/");
    	if(file != null) {
    		accountModel.setImage(file.getName());
    	}
    	 accountService.save(accountModel);
    	model.addAttribute("message", "Thêm tài khoản thành công!");
	
    	model.addAttribute("listCustomer", accountService.findAllByRole("USER"));
		return "admin/customer/index";
    }

}
