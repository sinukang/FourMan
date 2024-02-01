package com.ptconnect.myapp.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ptconnect.myapp.domain.CenterInfoDTO;
import com.ptconnect.myapp.service.CenterService;
import com.ptconnect.myapp.service.TrainerService;



@Controller
public class CenterTrainerController {
	@Autowired
	CenterService cs;
	@Autowired
	TrainerService ts;
	
	@RequestMapping(value = "centerTrainer", method = RequestMethod.GET)
	public String example() {
		return "centerMypage/centerTrainer";
	}
	
	@ResponseBody
	@RequestMapping(value="centerFind.ajax", method = RequestMethod.GET)
	public JSONArray centerFind(
			@RequestParam String ctName,
			HttpSession session) {
		JSONObject jo = new JSONObject();
		JSONArray ja = new JSONArray();
		if(ctName.equals("")) {
			jo.put("value", "none");
			ja.add(jo);
			return ja;
		}
		ArrayList<CenterInfoDTO>cList = cs.centerFind(ctName);
		jo.put("value", cList.size());
		ja.add(jo);
		
		for(CenterInfoDTO ci:cList) {
			JSONObject centerInfoJo = new JSONObject();
			centerInfoJo.put("ctNo", ci.getCtNo());
			centerInfoJo.put("ctName", ci.getCtName());
			centerInfoJo.put("ctAddr", ci.getMbAddr());
			ja.add(centerInfoJo);
		}
		return ja;
	}
	
	@ResponseBody
	@RequestMapping(value="centerTrainerConnect.ajax", method = RequestMethod.POST)
	public JSONObject centerTrainerConnect(
			@RequestParam String ctNo,
			HttpSession session) {
		JSONObject jo = new JSONObject();
		if(ctNo.equals("")) {
			jo.put("value", 0);
			return jo;
		}else {
			if(session.getAttribute("tnNo")==null) {
				jo.put("value", 2);
				return jo;
			}
			System.out.println("ctNo : " + ctNo);
			System.out.println("tnNo : " + session.getAttribute("tnNo"));
			int centerNo = Integer.parseInt(ctNo);
			int trainerNo = (int)session.getAttribute("tnNo");
			int value = ts.trainerCenterConnect(centerNo, trainerNo);
			jo.put("value", value);
			return jo;
		}
	}
}
