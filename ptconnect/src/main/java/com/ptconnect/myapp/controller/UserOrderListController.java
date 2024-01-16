package com.ptconnect.myapp.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ptconnect.myapp.domain.PaymentDTO;
import com.ptconnect.myapp.service.OrderService;

@Controller
public class UserOrderListController {
	@Autowired
	OrderService os;
	
	@RequestMapping(value = "userOrderList", method = RequestMethod.GET)
	public String userOrderList(
			HttpSession session) {
		int mbNo = (int)session.getAttribute("mbNo");
		ArrayList<PaymentDTO> pList = os.userProductList(mbNo);
		session.setAttribute("pList", pList);
		return "userMypage/userOrderList";
	}

}
