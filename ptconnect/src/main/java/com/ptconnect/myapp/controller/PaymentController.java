package com.ptconnect.myapp.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ptconnect.myapp.domain.PaymentDTO;
import com.ptconnect.myapp.service.PaymentService;

@Controller
public class PaymentController {
	
	@Autowired
	private PaymentService ps;
	
	@RequestMapping(value = "payment", method = {RequestMethod.POST, RequestMethod.GET})
	public void payment(@RequestBody PaymentDTO po, HttpSession session) throws Exception {
		
		int mbNo = Integer.parseInt(session.getAttribute("mbNo").toString());
		
		System.out.println("mbNo : " + mbNo);
		po.setMbNo(mbNo);
		
		int tnNo = Integer.parseInt(session.getAttribute("tnNo").toString());
		
		System.out.println("tnNo : " + tnNo);
		po.setTnNo(tnNo);
		
		String token = ps.getToken();
		System.out.println("토큰 : " + token);
		
		String amount = ps.paymentInfo(po.getPmNo(), token);
		System.out.println("amount : " + amount);
		System.out.println("odPrice : " + Integer.toString(po.getOdPrice()));
		
		if (!Integer.toString(po.getOdPrice()).equals(amount)) {
			// 결제 취소
			ps.payMentCancle(token, po.getOdNo(), po.getPmNo(), amount,"결제 금액 오류", po);
			
			int value = ps.orderInsert(po);
			
			int value2 = ps.payment(po);
			
			int value3 = ps.paymentCancleInsert(po);
			
			System.out.println("value : " + value);
			
			System.out.println("value2 : " + value2);
			
			System.out.println("value3 : " + value3);
			
		} else {
			int value = ps.orderInsert(po);
			
			int value2 = ps.payment(po);
			
			if(session.getAttribute("mbNo") != null) {
				int value3 = ps.nonmember(po);
				
				System.out.println("value3 : " + value3);
			}
			
			System.out.println("value : " + value);
			
			System.out.println("value2 : " + value2);
			
		}
		
			
	}

}
