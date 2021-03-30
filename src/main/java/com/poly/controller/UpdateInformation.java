package com.poly.controller;

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

import com.poly.Service.IAccountService;
import com.poly.Service.UploadService;
import com.poly.model.AccountModel;
import com.poly.utils.SessionUtil;

@Controller
@RequestMapping("home")
public class UpdateInformation {
	@Autowired
	UploadService upload;

    private final IAccountService accountService;

    public UpdateInformation(IAccountService accountService) {
        this.accountService = accountService;
    }
	
	@GetMapping("/updateInformation")
	public String update(Model model, HttpServletRequest request) {
		AccountModel accountModel = (AccountModel) SessionUtil.getInstance().getValue(request, "USER_LOGIN");
		if(accountModel != null) {
			model.addAttribute("updateForm", accountModel);
		}else {
			model.addAttribute("message", "chuaw login");
		}	
		return "home/updateInformation";
		
	}
	
	@PostMapping("/updateInformation")
	public String updateInfo(Model model, @ModelAttribute("formUpdateInfo") AccountModel accountModel
    		, @RequestParam("photo_file") MultipartFile imageFile, HttpServletRequest request) {
    	try {
    		File file = upload.save(imageFile, "/static/images/account/");
        	if(file != null) {
        		accountModel.setImage(file.getName());
        	}     		
            	AccountModel accountModel2 =  accountService.save(accountModel);     
            	if(accountModel2 != null) {
            		model.addAttribute("message", "Cập nhập tài khoản thành công!");
            		SessionUtil.getInstance().putValue(request, "USER_LOGIN", accountModel2);
            		return "redirect:/home/updateInformation";
            	}
        	return "home/updateInformation";
        	
		} catch (Exception e) {
			model.addAttribute("message", "Cập nhập tài khoản thất bại!");
			return "home/updateInformation";
		}
    	
		
	}

}
