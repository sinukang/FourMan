package com.ptconnect.myapp.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ptconnect.myapp.domain.MemberDTO;
import com.ptconnect.myapp.service.MemberService;
import com.ptconnect.myapp.service.TrainerService;

@Controller
public class UserInfoController {

	@Autowired
	TrainerService ts;
	
	@Autowired
	MemberService ms;
	
	@Autowired
	private BCryptPasswordEncoder bCrptPasswordEncoderer;
	
	@RequestMapping(value = "userInfo", method = RequestMethod.GET)
	public String userInfo(HttpServletRequest request, Model model) {
		
		HttpSession session = request.getSession(false);
		Integer mbNo = (Integer) session.getAttribute("mbNo");
		System.out.println("mbNo : " + mbNo);
		
		if (mbNo != null) {
			MemberDTO mo = ts.memberSelectOne(mbNo);
			System.out.println("mbName :" + mo.getMbName());
			model.addAttribute("mo",mo);
			}
		return "userMypage/userInfo";
	}
	
	@ResponseBody
	@RequestMapping(value="memberPwdCheck.ajax", method=RequestMethod.POST)
	public JSONObject memberPwdCheck(
			@RequestParam("mbPwd") String pwd,
			HttpServletRequest request) {

		HttpSession session = request.getSession(false);
		Integer mbNo = (Integer) session.getAttribute("mbNo");
		MemberDTO mo = ms.memberPwdCheck(mbNo);
		JSONObject jo = new JSONObject();
		if(mo!=null) {
			if(bCrptPasswordEncoderer.matches(pwd, mo.getMbPwd())) {
				session.setAttribute("PCA", "T");
				jo.put("msg", "인증이 완료되었습니다.");
				jo.put("value",1);
				return jo;
			}else {
				jo.put("msg", "비밀번호가 일치하지 않습니다..");
				jo.put("value",0);
				return jo;
			}
		}else{
			jo.put("msg", "권한오류");
			jo.put("value",2);
			return jo;
		}
		
	}
}
