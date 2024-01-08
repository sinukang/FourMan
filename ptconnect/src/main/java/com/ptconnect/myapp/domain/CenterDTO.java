package com.ptconnect.myapp.domain;

import java.util.ArrayList;

public class CenterDTO extends MemberDTO{
	
	private int ctNo;
	private int flNo;
	private String ctName;
	private String ctIntro;
	private String ctOperate;
	private String ctInfo;
	private int ctBn;
	private ArrayList<CenterPriceDTO> centerPriceArray;
	private String ctDate;
	private String ctDateM;
	public int getCtNo() {
		return ctNo;
	}
	public void setCtNo(int ctNo) {
		this.ctNo = ctNo;
	}
	public int getFlNo() {
		return flNo;
	}
	public void setFlNo(int flNo) {
		this.flNo = flNo;
	}
	public String getCtName() {
		return ctName;
	}
	public void setCtName(String ctName) {
		this.ctName = ctName;
	}
	public String getCtIntro() {
		return ctIntro;
	}
	public void setCtIntro(String ctIntro) {
		this.ctIntro = ctIntro;
	}
	public String getCtOperate() {
		return ctOperate;
	}
	public void setCtOperate(String ctOperate) {
		this.ctOperate = ctOperate;
	}
	public String getCtInfo() {
		return ctInfo;
	}
	public void setCtInfo(String ctInfo) {
		this.ctInfo = ctInfo;
	}
	public int getCtBn() {
		return ctBn;
	}
	public void setCtBn(int ctBn) {
		this.ctBn = ctBn;
	}
	public ArrayList<CenterPriceDTO> getCenterPriceArray() {
		return centerPriceArray;
	}
	public void setCenterPriceArray(ArrayList<CenterPriceDTO> centerPriceArray) {
		this.centerPriceArray = centerPriceArray;
	}
	public String getCtDate() {
		return ctDate;
	}
	public void setCtDate(String ctDate) {
		this.ctDate = ctDate;
	}
	public String getCtDateM() {
		return ctDateM;
	}
	public void setCtDateM(String ctDateM) {
		this.ctDateM = ctDateM;
	}

}
