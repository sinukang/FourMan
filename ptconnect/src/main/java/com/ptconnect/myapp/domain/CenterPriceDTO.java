package com.ptconnect.myapp.domain;

public class CenterPriceDTO{
	
	private int cpNo;
	private int ctNo;
	private String cpCount;
	private String centerPrice;
	private String cpDate;
	private String cpDateM;
	public int getCpNo() {
		return cpNo;
	}
	public void setCpNo(int cpNo) {
		this.cpNo = cpNo;
	}
	public int getCtNo() {
		return ctNo;
	}
	public void setCtNo(int ctNo) {
		this.ctNo = ctNo;
	}
	public String getCpCount() {
		return cpCount;
	}
	public void setCpCount(String cpCount) {
		this.cpCount = cpCount;
	}
	public String getCenterPrice() {
		return centerPrice;
	}
	public void setCenterPrice(String centerPrice) {
		this.centerPrice = centerPrice;
	}
	public String getCpDate() {
		return cpDate;
	}
	public void setCpDate(String cpDate) {
		this.cpDate = cpDate;
	}
	public String getCpDateM() {
		return cpDateM;
	}
	public void setCpDateM(String cpDateM) {
		this.cpDateM = cpDateM;
	}

}
