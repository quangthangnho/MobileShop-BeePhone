package com.poly.admin.controller;

import java.io.File;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
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
import com.poly.entity.AccountEntity;
import com.poly.model.AccountModel;
import com.poly.utils.SessionUtil;

@Controller
@RequestMapping("admin/master")
public class AccountAdminController {
	
	@Autowired
	UploadService upload;

    private final IAccountService accountService;

    public AccountAdminController(IAccountService accountService) {
        this.accountService = accountService;
    }

    @GetMapping("/index")
    public String homeAdmin(Model model) {
        model.addAttribute("listAdmin", accountService.findAllByRole("ADMIN"));
        model.addAttribute("indexForm", new AccountModel());
        return "admin/master/index";
    }

    @GetMapping("/detail")
    public String adminDetail(Model model, @RequestParam("id") Long id){
       model.addAttribute("indexForm", accountService.findById(id));
        model.addAttribute("listAdmin", accountService.findAllByRole("ADMIN"));
        return "admin/master/index";
    }

    @PostMapping("/detail")
    public String updateAdmin(Model model, @ModelAttribute("form") AccountModel accountModel
    		, @RequestParam("photo_file") MultipartFile imageFile) {
    	
    		File file = upload.save(imageFile, "/static/images/account/");
        	if(file != null) {
        		accountModel.setImage(file.getName());
        	}
        	model.addAttribute("message", "C???p nh???p t??i kho???n th??nh c??ng!");
        	accountService.save(accountModel);
        	
        	model.addAttribute("listAdmin", accountService.findAllByRole("ADMIN"));
    		return "admin/master/index"; 	
    }
    
    @PostMapping("/delete")
    public String deleteAdmin(Model model, @ModelAttribute("form") AccountModel accountModel, HttpServletRequest request) {
    	try {
    		AccountModel sess = (AccountModel) SessionUtil.getInstance().getValue(request, "USER_LOGIN");
    		if(accountModel.getUsername().equalsIgnoreCase(sess.getUsername())) {
    			model.addAttribute("message", "Kh??ng ???????c x??a ch??nh m??nh!");
    		}else {
    			accountService.delete(accountModel);
        		model.addAttribute("message", "Xo?? t??i kho???n th??nh c??ng!");
    		}
    		
    	model.addAttribute("listAdmin", accountService.findAllByRole("ADMIN"));
		} catch (Exception e) {
			model.addAttribute("message", "T??i kho???n n??y kh??ng t???n t???i!");
		}
		return "admin/master/index";
    }
    
    @PostMapping("/create")
    public String createAdmin(Model model, @ModelAttribute("form") AccountModel accountModel , 
    		@RequestParam("photo_file") MultipartFile imageFile) {
    		
    	AccountModel checkUser = new AccountModel();
    	checkUser =	accountService.findByUsername(accountModel);
    		if(checkUser != null) {
    			model.addAttribute("message", "T??n ????ng nh???p ???? t???n t???i!");
    		}else {
    			if(accountModel.getUsername().length() > 1 && accountModel.getPassword().length() > 1 && accountModel.getFullname().length() > 1 
    					&& accountModel.getEmail().length() > 1) {
    				File file = upload.save(imageFile, "/static/images/account/");
                	if(file != null) {
                		accountModel.setImage(file.getName());
                	}
                	 accountService.save(accountModel);
                	model.addAttribute("message", "Th??m t??i kho???n th??nh c??ng!");
    			}else {
    				model.addAttribute("message", "C??c tr?????ng kh??ng ???????c ????? tr???ng!");
    			}
    				
    		}
    	    	
    	model.addAttribute("listAdmin", accountService.findAllByRole("ADMIN"));
		return "admin/master/index";
    }
    
    



}
