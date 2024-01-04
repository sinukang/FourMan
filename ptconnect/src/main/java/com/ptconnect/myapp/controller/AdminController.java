package com.ptconnect.myapp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/admin")
public class AdminController {
	
	@GetMapping(value = "/admin_index.do")
	public String admin_index() {
		
		
		return "admin/admin_index";
	}
	
	@GetMapping(value = "/trainerRegisterList.do")
	public String trainerRegisterList() {
		
		
		return "admin/trainerRegisterList";
	}	
	
	@GetMapping(value = "/centerRegisterList.do")
	public String centerRegisterList() {
		
		
		return "admin/centerRegisterList";
	}	
	
	@GetMapping(value = "/reportList.do")
	public String reportList() {
		
		
		return "admin/reportList";
	}	
	
	@GetMapping(value = "/registeredProductList.do")
	public String registeredProductList() {
		
		
		return "admin/registeredProductList";
	}	
	
	@GetMapping(value = "/tradedProductList.do")
	public String tradedProductList() {
		
		
		return "admin/tradedProductList";
	}	
	
	@GetMapping(value = "/tradedProductViewDetail.do")
	public String tradedProductViewDetail() {
		
		
		return "admin/tradedProductViewDetail";
	}	
	
	@GetMapping(value = "/managerChatList.do")
	public String managerChatList() {
		
		
		return "admin/managerChatList";
	}	
	
	@GetMapping(value = "/customerChatList.do")
	public String customerChatList() {
		
		
		return "admin/customerChatList";
	}	
	
	@GetMapping(value = "/userManagement.do")
	public String userManagement() {
		
		
		return "admin/userManagement";
	}	
	
	@GetMapping(value = "/admin_review.do")
	public String admin_review() {
		
		
		return "admin/admin_review";
	}	
	
	@GetMapping(value = "/admin_point.do")
	public String admin_point() {
		
		
		return "admin/admin_point";
	}	
	
	@GetMapping(value = "/admin_point_detail.do")
	public String admin_point_detail() {
		
		
		return "admin/admin_point_detail";
	}	
	
	@GetMapping(value = "/admin_coupon_list.do")
	public String admin_coupon_list() {
		
		
		return "admin/admin_coupon_list";
	}	
	
	@GetMapping(value = "/admin_coupon_modify.do")
	public String admin_coupon_modify() {
		
		
		return "admin/admin_coupon_modify";
	}	
	
	@GetMapping(value = "/admin_notice.do")
	public String admin_notice() {
		
		
		return "admin/admin_notice";
	}	
	
	@GetMapping(value = "/admin_notice_detail.do")
	public String admin_notice_detail() {
		
		
		return "admin/admin_notice_detail";
	}
	
	@GetMapping(value = "/admin_notice_write.do")
	public String admin_notice_write() {
		
		
		return "admin/admin_notice_write";
	}
	
	@GetMapping(value = "/admin_notice_modify.do")
	public String admin_notice_modify() {
		
		
		return "admin/admin_notice_modify";
	}
	
	@GetMapping(value = "/admin_FAQ.do")
	public String admin_FAQ() {
		
		
		return "admin/admin_FAQ";
	}
	
	@GetMapping(value = "/admin_FAQ_write.do")
	public String admin_FAQ_write() {
		
		
		return "admin/admin_FAQ_write";
	}
	
	@GetMapping(value = "/admin_FAQ_modify.do")
	public String admin_FAQ_modify() {
		
		
		return "admin/admin_FAQ_modify";
	}

}
