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
	    
	    Integer mbNo = (Integer) session.getAttribute("mbNo");
		
	    System.out.println("mbNo : " + mbNo);
	    System.out.println("페이먼트 : " + session.getAttribute("tnNo"));
	    int tnNo = Integer.parseInt(session.getAttribute("tnNo").toString());
	    
	    System.out.println("tnNo : " + tnNo);
	    po.setTnNo(tnNo);
	    
	    if (mbNo != null) {
	        
	        String token = ps.getToken();
	        System.out.println("토큰 : " + token);
	        
	        String amount = ps.paymentInfo(po.getPmNo(), token);
	        System.out.println("amount : " + amount);
	        System.out.println("odPrice : " + Integer.toString(po.getOdPrice()));
	        
	        if (Integer.toString(po.getOdPrice()).equals(amount)) {
	            // 결제 취소
	        	po.setMbNo(mbNo);
	        	
	            ps.payMentCancle(token, po.getOdNo(), po.getPmNo(), amount, "결제 금액 오류", po);
	            
	            int value = ps.orderInsert(po);
	            
	            int value2 = ps.payment(po);
	            
	            int value3 = ps.paymentCancleInsert(po);
	            
	            System.out.println("value : " + value);
	            
	            System.out.println("value2 : " + value2);
	            
	            System.out.println("value3 : " + value3);
	            
	        } else {
	            
	        	po.setMbNo(mbNo);
	        	
	            int value = ps.orderInsert(po);
	            System.out.println("주문정보 : " + value);
	            
	            if (value > 0) {
	            	
	            int value2 = ps.payment(po);
	            System.out.println("결제정보 : " + value2);
	            
		            if(value2 > 0) {
		            	
		            	int value4 = ps.pointInsert(po);
		            	System.out.println("포인트적립 : " + value4);
		            	
		            	if(value4 > 0) {
		            		
			            	int value5 = ps.usePoint(po);
			            	System.out.println("포인트사용 : " + value5);
		            	
		            	}else {
		            		ps.payMentCancle(token, po.getOdNo(), po.getPmNo(), amount, "결제 금액 오류", po);
		            		
		            		int value3 = ps.paymentCancleInsert(po);
		            		System.out.println("value3 : " + value3);
		            	}
		            }
		            
	            }
		            	
	        }
	        
	    } else if(mbNo == null) {
	    	String token = ps.getToken();
	        System.out.println("토큰 : " + token);
	        
	        String amount = ps.paymentInfo(po.getPmNo(), token);
	        System.out.println("amount : " + amount);
	        System.out.println("odPrice : " + Integer.toString(po.getOdPrice()));
	    	
	        if (!Integer.toString(po.getOdPrice()).equals(amount)) {
		        // mbNo가 null인 경우 처리
		    	int value3 = ps.nonmember(po);
		    	System.out.println("비회원정보 : " + value3);
		    	System.out.println("nmNo : " + po.getNmNo());
		    	
		    	if(value3 > 0) {
		    		
			    	int value = ps.nonUserOrderInsert(po);
			    	System.out.println("주문정보 : " + value);
			    	
			    	if(value > 0) {
			    		
			    		int value2 = ps.payment(po);
				    	System.out.println("결제정보 : " + value2);
			    		
			    	}else {
			    		ps.payMentCancle(token, po.getOdNo(), po.getPmNo(), amount, "결제 금액 오류", po);
			    		
			    		int value4 = ps.paymentCancleInsert(po);
	            		System.out.println("value4 : " + value4);
			    	}
		    	
		    	}
	    	}
	    }
	}
	
}
