package com.ptconnect.myapp.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/admin")
public class AdminController {
	
	@GetMapping(value = "/admin_index")
	public String admin_index(
			HttpSession session) {
		session.removeAttribute("menu_location");
		
		return "admin/admin_index";
	}
	
	@GetMapping(value = "/trainerRegisterList")
	public String trainerRegisterList(
			HttpSession session) {
		session.removeAttribute("menu_location");
		session.setAttribute("menu_location","0,1");
		
		
		return "admin/trainerRegisterList";
	}	
	
	@GetMapping(value = "/centerRegisterList")
	public String centerRegisterList(
			HttpSession session) {
		session.removeAttribute("menu_location");
		session.setAttribute("menu_location","0,2");
		
		return "admin/centerRegisterList";
	}	
	
	@GetMapping(value = "/reportList")
	public String reportList(
			HttpSession session) {
		session.removeAttribute("menu_location");
		session.setAttribute("menu_location","1,0");
		
		return "admin/reportList";
	}	
	
	@GetMapping(value = "/registeredProductList")
	public String registeredProductList(
			HttpSession session) {
		session.removeAttribute("menu_location");
		session.setAttribute("menu_location","2,1");
		return "admin/registeredProductList";
	}	
	
	@GetMapping(value = "/tradedProductList")
	public String tradedProductList(
			HttpSession session) {
		session.removeAttribute("menu_location");
		session.setAttribute("menu_location","2,2");
		
		return "admin/tradedProductList";
	}	
	
	@GetMapping(value = "/tradedProductViewDetail")
	public String tradedProductViewDetail(
			HttpSession session) {
		session.removeAttribute("menu_location");
		session.setAttribute("menu_location","2,2");
		
		return "admin/tradedProductViewDetail";
	}	
	
	@GetMapping(value = "/managerChatList")
	public String managerChatList(
			HttpSession session) {
		session.removeAttribute("menu_location");
		session.setAttribute("menu_location","3,1");
		
		return "admin/managerChatList";
	}	
	
	@GetMapping(value = "/customerChatList")
	public String customerChatList(
			HttpSession session) {
		session.removeAttribute("menu_location");
		session.setAttribute("menu_location","3,2");
		
		return "admin/customerChatList";
	}	
	
	@GetMapping(value = "/userManagement")
	public String userManagement(
			HttpSession session) {
		session.removeAttribute("menu_location");
		session.setAttribute("menu_location","4,0");
		
		return "admin/userManagement";
	}	
	
	@GetMapping(value = "/admin_review")
	public String admin_review(
			HttpSession session) {
		session.removeAttribute("menu_location");
		session.setAttribute("menu_location","5,0");
		
		return "admin/admin_review";
	}	
	
	@GetMapping(value = "/admin_point")
	public String admin_point(
			HttpSession session) {
		session.removeAttribute("menu_location");
		session.setAttribute("menu_location","6,1");
		
		return "admin/admin_point";
	}	
	
	@GetMapping(value = "/admin_point_detail")
	public String admin_point_detail(
			HttpSession session) {
		session.removeAttribute("menu_location");
		session.setAttribute("menu_location","6,2");
		
		return "admin/admin_point_detail";
	}	
	
	@GetMapping(value = "/admin_coupon_list")
	public String admin_coupon_list(
			HttpSession session) {
		session.removeAttribute("menu_location");
		session.setAttribute("menu_location","7,1");
		
		return "admin/admin_coupon_list";
	}	

	@GetMapping(value = "/admin_coupon")
	public String admin_coupon(
			HttpSession session) {
		session.removeAttribute("menu_location");
		session.setAttribute("menu_location","7,2");
		
		
		return "admin/admin_coupon_modify";
	}	
	@GetMapping(value = "/admin_coupon_modify")
	public String admin_coupon_modify(
			HttpSession session) {
		session.removeAttribute("menu_location");
		session.setAttribute("menu_location","7,2");
		
		
		return "admin/admin_coupon_modify";
	}	
	
	@GetMapping(value = "/admin_notice")
	public String admin_notice(
			HttpSession session) {
		session.removeAttribute("menu_location");
		session.setAttribute("menu_location","8,1");
		
		
		return "admin/admin_notice";
	}	
	
	@GetMapping(value = "/admin_notice_detail")
	public String admin_notice_detail(
			HttpSession session) {
		session.removeAttribute("menu_location");
		session.setAttribute("menu_location","8,1");
		
		
		return "admin/admin_notice_detail";
	}
	
	@GetMapping(value = "/admin_notice_write")
	public String admin_notice_write(
			HttpSession session) {
		session.removeAttribute("menu_location");
		session.setAttribute("menu_location","8,1");
		return "admin/admin_notice_write";
	}
	
	@GetMapping(value = "/admin_notice_modify")
	public String admin_notice_modify(
			HttpSession session) {
		session.removeAttribute("menu_location");
		session.setAttribute("menu_location","8,1");
		
		return "admin/admin_notice_modify";
	}
	
	@GetMapping(value = "/admin_FAQ")
	public String admin_FAQ(
			HttpSession session) {
		session.removeAttribute("menu_location");
		session.setAttribute("menu_location","8,2");
		
		return "admin/admin_FAQ";
	}
	
	@GetMapping(value = "/admin_FAQ_write")
	public String admin_FAQ_write(
			HttpSession session) {
		session.removeAttribute("menu_location");
		session.setAttribute("menu_location","8,2");
		
		return "admin/admin_FAQ_write";
	}
	
	@GetMapping(value = "/admin_FAQ_modify")
	public String admin_FAQ_modify(
			HttpSession session) {
		session.removeAttribute("menu_location");
		session.setAttribute("menu_location","8,2");
		
		return "admin/admin_FAQ_modify";
	}

}
