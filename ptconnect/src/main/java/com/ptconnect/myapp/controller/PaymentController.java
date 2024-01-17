package com.ptconnect.myapp.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ptconnect.myapp.domain.PaymentDTO;
import com.ptconnect.myapp.service.PaymentService;

@Controller
public class PaymentController {
	
	@Autowired
	private PaymentService ps;
	
	@RequestMapping(value = "paymentCancle")
	public void paymentCancle(@RequestBody PaymentDTO po, HttpSession session) throws Exception {
		
		Integer mbNo = (Integer) session.getAttribute("mbNo");
		System.out.println("mbNo : " + mbNo);
	    System.out.println("페이먼트 : " + session.getAttribute("tnNo"));
	    int tnNo = Integer.parseInt(session.getAttribute("tnNo").toString());
	    
	    po.setTnNo(tnNo);
	    System.out.println("tnNo : " + po.getTnNo());
		
		String token = ps.getToken();
        System.out.println("토큰 : " + token);
        
        String amount = ps.paymentInfo(po.getPmNo(), token);
        
        System.out.println("amount : " + amount);
        System.out.println("odPrice : " + Integer.toString(po.getOdPrice()));
        
        ps.payMentCancle(token, po.getOdNo(), po.getPmNo(), amount, "결제 금액 오류", po);
        
        if (session.getAttribute("mbNo") != null) {
	        
	        po.setMbNo(mbNo);
	            
	        int value = ps.orderInsert(po);
	        int value2 = ps.payment(po);
	        int value3 = ps.paymentCancleInsert(po);
	            
	        System.out.println("value : " + value);
	        System.out.println("value2 : " + value2);
	        System.out.println("value3 : " + value3);
	            
	   }else if(session.getAttribute("mbNo") == null) {
	    	
	       int value1 = ps.nonmember(po);
		   System.out.println("비회원정보 : " + value1);
		   System.out.println("nmNo : " + po.getNmNo());
		    	
		   int value2 = ps.nonUserOrderInsert(po);
		   System.out.println("비회원 주문정보 : " + value2);
			    	
		   int value3 = ps.payment(po);
		   System.out.println("결제정보 : " + value3);
			    		
		   int value4 = ps.paymentCancleInsert(po);
		   System.out.println("주문취소 : " + value4);
		    	
	    }
	}
	
	
	@RequestMapping(value = "payment", method = {RequestMethod.POST, RequestMethod.GET})
	public void payment(@RequestBody PaymentDTO po, HttpSession session) throws Exception {
	    
	    Integer mbNo = (Integer) session.getAttribute("mbNo");
		
	    System.out.println("mbNo : " + mbNo);
	    System.out.println("페이먼트 : " + session.getAttribute("tnNo"));
	    int tnNo = Integer.parseInt(session.getAttribute("tnNo").toString());
	    
	    po.setTnNo(tnNo);
	    System.out.println("tnNo : " + po.getTnNo());
	    
	    String token = ps.getToken();
        System.out.println("토큰 : " + token);
        
        String amount = ps.paymentInfo(po.getPmNo(), token);
        System.out.println("amount : " + amount);
        System.out.println("odPrice : " + Integer.toString(po.getOdPrice()));
	    
	    if (session.getAttribute("mbNo") != null) {
	        
	        
	        if (!Integer.toString(po.getOdPrice()).equals(amount)) {
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
	            
	            int value2 = ps.payment(po);
	            System.out.println("결제정보 : " + value2);
	            
		        int value3 = ps.pointInsert(po);
		        System.out.println("포인트적립 : " + value3);
		            	
			    int value4 = ps.usePoint(po);
			    System.out.println("포인트사용 : " + value4);
		        
			    if(value <= 0 || value2 <=0 || value3 <= 0 || value4 <= 0) {
			        ps.payMentCancle(token, po.getOdNo(), po.getPmNo(), amount, "결제 금액 오류", po);
			            		
			        int value5 = ps.paymentCancleInsert(po);
			        System.out.println("결제취소 : " + value5);
			    }    
	        }
	        
	    } else if(session.getAttribute("mbNo") == null) {
	    	
	        if (!Integer.toString(po.getOdPrice()).equals(amount)) {
	        	
	        	ps.payMentCancle(token, po.getOdNo(), po.getPmNo(), amount, "결제 금액 오류", po);
	        	
		    	int value1 = ps.nonmember(po);
		    	System.out.println("비회원정보 : " + value1);
		    	System.out.println("nmNo : " + po.getNmNo());
		    	
			    int value2 = ps.nonUserOrderInsert(po);
			   System.out.println("비회원 주문정보 : " + value2);
			    	
			    int value3 = ps.payment(po);
				System.out.println("결제정보 : " + value3);
			    		
			    int value4 = ps.paymentCancleInsert(po);
	            System.out.println("주문취소 : " + value4);
		    	
	    	}else {
	    		int value = ps.nonmember(po);
		    	System.out.println("비회원정보 : " + value);
		    	System.out.println("nmNo : " + po.getNmNo());
	    		
	            int value2 = ps.nonUserOrderInsert(po);
	            System.out.println("비회원주문정보 : " + value2);
	            
	            int value3 = ps.payment(po);
			    System.out.println("결제정보 : " + value3);
			    
			    if(value <= 0 || value2 <= 0 || value3 <= 0) {
			    	
			    	ps.payMentCancle(token, po.getOdNo(), po.getPmNo(), amount, "결제 금액 오류", po);
			    		
			    	int value4 = ps.paymentCancleInsert(po);
	            	System.out.println("value4 : " + value4);
            	
			    }
			    
	    	}
	        
	    }
	}
	
	@RequestMapping(value = "userPaymentCancle")
	public String userPaymentCancle(@RequestBody PaymentDTO po, HttpSession session) throws Exception {
		
		Integer mbNo = (Integer) session.getAttribute("mbNo");
		System.out.println("mbNo : " + mbNo);
		
		String token = ps.getToken();
        System.out.println("토큰 : " + token);
        
        String amount = ps.paymentInfo(po.getPmNo(), token);
        
        System.out.println("amount : " + amount);
        
        ps.payMentCancle(token, po.getOdNo(), po.getPmNo(), amount, "회원 결제 취소", po);
        
        int value = ps.paymentStateUpdate(po);
        int value2 = ps.paymentCancleInsert(po);
	            
        System.out.println("value : " + value);
        System.out.println("value2 : " + value2);
	    
        return "redirect:/userOrderList";
	}
}
