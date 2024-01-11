package com.ptconnect.myapp.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.ptconnect.myapp.domain.CenterInfoDTO;
import com.ptconnect.myapp.domain.MemberDTO;
import com.ptconnect.myapp.service.MemberService;
import com.ptconnect.myapp.util.MailSender;

@Controller
public class MemberController {

	@Autowired
	MemberService ms;
	@Autowired
	MailSender mail;
	@Autowired
	private BCryptPasswordEncoder bCrptPasswordEncoderer;
	
	@RequestMapping(value = "joinUser", method = RequestMethod.GET)
	public String joinUser() {
		return "member/joinUser";
	}
	@RequestMapping(value = "joinTrainer", method = RequestMethod.GET)
	public String joinTrainer() {
		return "member/joinTrainer";
	}
	
	@RequestMapping(value = "joinCenter", method = RequestMethod.GET)
	public String joinCenter() {
		return "member/joinCenter";
	}
	@ResponseBody
	@RequestMapping(value = "memberEmailCheck.ajax", method = RequestMethod.POST)
	public JSONObject memberEmailCheck(@RequestParam("mbEmail") String email,
			HttpSession session) {
		int value = 0;
		
		value = ms.memberEmailCheck(email);
		JSONObject jo = new JSONObject();
		if (value == 0) {
			String authNumber = mail.getTempPassword();
	        String title = "회원가입 인증 메일입니다.";
	        String body = "인증번호 : " + authNumber;

	        if (mail.MailSend(email, title, body)) {
	            session.removeAttribute("MAIL_NUMBER");
	            session.setAttribute("MAIL_NUMBER", authNumber);
	            System.out.println((String)session.getAttribute("MAIL_NUMBER"));
	            System.out.println("send mail ok");
	        }else {
	        	value=5;
	        }
	    }
		jo.put("value", value);
		return jo;
	}

	@ResponseBody
	@RequestMapping(value = "getsign.ajax", method = RequestMethod.POST)
	public JSONObject getsign(@RequestParam("AuthCode") String code,
			HttpSession session) {
		int value = 0;
		if(code != null) {
			if(code.equals(session.getAttribute("MAIL_NUMBER"))) {
				value=1;
			}else {
				value=2;
			}
		}
		JSONObject jo = new JSONObject();
		jo.put("value", value);
		return jo;
	}

	@ResponseBody
	@RequestMapping(value = "joinUserAction.ajax", method = RequestMethod.POST)
	public JSONObject joinUserAction(@RequestBody @Valid MemberDTO mo,
			 BindingResult bindingResult,
				HttpSession session) {
		int value = 0;
		JSONObject jo = new JSONObject();
		if(mo.getMbEmail() != null) {
			if(session.getAttribute("MAIL_NUMBER")==null) {
				jo.put("msg", "이메일 인증을 진행해주세요.");
			}else if((String)session.getAttribute("MAIL_NUMBER")!=""&&!mo.getMbAuth().equals((String)session.getAttribute("MAIL_NUMBER"))){
				jo.put("msg", "이메일 인증번호를 입력해주세요.");
			}else if(bindingResult.hasErrors()){ // VO로 받은 데이터의 문제가 있을시
				FieldError fieldError = bindingResult.getFieldError();
				jo.put("msg", fieldError.getDefaultMessage()); //message를 출력한다.
			}else {
				String mbPwd2 = bCrptPasswordEncoderer.encode(mo.getMbPwd());
				mo.setMbPwd(mbPwd2);
				value=1;		
				ms.memberInsert(mo);		
			}
		}
		jo.put("value", value);
		return jo;
	}
	@ResponseBody
	@RequestMapping(value = "joinTrainerAction.ajax", method = RequestMethod.POST)
	public JSONObject joinTrainerAction(@RequestBody @Valid MemberDTO mo,
			 BindingResult bindingResult,
				HttpSession session) {
		int value = 0;
		JSONObject jo = new JSONObject();
		if(mo.getMbEmail() != null) {
			if(session.getAttribute("MAIL_NUMBER")==null) {
				jo.put("msg", "이메일 인증을 진행해주세요.");
			}else if((String)session.getAttribute("MAIL_NUMBER")!=""&&!mo.getMbAuth().equals((String)session.getAttribute("MAIL_NUMBER"))){
				jo.put("msg", "이메일 인증번호를 입력해주세요.");
			}else if(bindingResult.hasErrors()){ // VO로 받은 데이터의 문제가 있을시
				FieldError fieldError = bindingResult.getFieldError();
				jo.put("msg", fieldError.getDefaultMessage()); //message를 출력한다.
			}else {
				String mbPwd2 = bCrptPasswordEncoderer.encode(mo.getMbPwd());
				mo.setMbPwd(mbPwd2);
				value=1;		
				ms.trainerInsert(mo);		
			}
		}
		jo.put("value", value);
		return jo;
	}
	@ResponseBody
	@RequestMapping(value = "joinCenterAction.ajax", method = RequestMethod.POST)
	public JSONObject joinCenterAction(@RequestBody @Valid CenterInfoDTO cio,
			 BindingResult bindingResult,
				HttpSession session) {
		int value = 0;
		JSONObject jo = new JSONObject();
		if(cio.getMbEmail() != null) {
			if(session.getAttribute("MAIL_NUMBER")==null) {
				jo.put("msg", "이메일 인증을 진행해주세요.");
			}else if((String)session.getAttribute("MAIL_NUMBER")!=""&&!cio.getMbAuth().equals((String)session.getAttribute("MAIL_NUMBER"))){
				jo.put("msg", "이메일 인증번호를 입력해주세요.");
			}else if(bindingResult.hasErrors()){ // VO로 받은 데이터의 문제가 있을시
				FieldError fieldError = bindingResult.getFieldError();
				jo.put("msg", fieldError.getDefaultMessage()); //message를 출력한다.
			}else {
				String mbPwd2 = bCrptPasswordEncoderer.encode(cio.getMbPwd());
				cio.setMbPwd(mbPwd2);
				value=1;		
				ms.centerInsert(cio);
			}
		}
		jo.put("value", value);
		return jo;
	}
	
	

	@RequestMapping(value = "login", method = RequestMethod.GET)
	public String login() {
		return "member/login";
	}
	
	@RequestMapping(value = "loginAction", method = RequestMethod.POST)
	public String loginAction(
			@RequestParam("mbEmail") String mbEmail, 
			@RequestParam("mbPwd") String mbPwd,
			@RequestParam("cate") String cate,
			HttpSession session, HttpServletRequest request, 
			HttpServletResponse response, 
			RedirectAttributes rttr,
			Model model) {

		MemberDTO mo = ms.memberLogin(mbEmail);
		String path = "";
		if(mo!=null) {
			if(bCrptPasswordEncoderer.matches(mbPwd, mo.getMbPwd())) {

				session.setAttribute("mbNo", mo.getMbNo());
				session.setAttribute("mbAuth", mo.getMbAuth());
				session.setAttribute("mbName", mo.getMbName());
				session.setAttribute("mbMapY", mo.getMbMapY());
				session.setAttribute("mbMapX", mo.getMbMapX());
				path = "findTrainer.do";
			}else {
				rttr.addFlashAttribute("errMsg","아이디 또는 비밀번호가 일치하지 않습니다.");
				rttr.addFlashAttribute("mbEmail",mbEmail);
				rttr.addFlashAttribute("cate",cate);
				path = "login";
			}
		}else{
			rttr.addFlashAttribute("errMsg","아이디 또는 비밀번호가 일치하지 않습니다.");
			rttr.addFlashAttribute("mbEmail",mbEmail);
			rttr.addFlashAttribute("cate",cate);
			path = "login";
		}
		
		return "redirect:/"+path;
	}

	@RequestMapping(value = "logout", method = RequestMethod.GET)
	public String logout(
			HttpSession session) {
		session.removeAttribute("mbNo");
		session.removeAttribute("mbAuth");
		session.removeAttribute("mbName");
		session.removeAttribute("mbMapX");
		session.removeAttribute("mbMapY");
		return "redirect:/findTrainer.do";
	}
	@RequestMapping(value = "idFind", method = RequestMethod.GET)
	public String idFind() {
		return "member/idFind";
	}
	
	@RequestMapping(value = "pwdFind", method = RequestMethod.GET)
	public String pwdFind() {
		return "member/pwdFind";
	}

}
