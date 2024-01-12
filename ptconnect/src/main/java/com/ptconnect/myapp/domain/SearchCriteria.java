package com.ptconnect.myapp.domain;

public class SearchCriteria extends Criteria{
	
	private String searchType;
	private String keyword;
	
	public String getSearchType() {
		return searchType;
	}
	public void setSearchType(String searchType) {
		this.searchType = searchType;
	}
	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	
	private int mbNo;
	private int distance;
	private String orderBy;
	private double mbMapY;	//로그인한 유저의 위도
	private double mbMapX;	//로그인한 유저의 경도
	
	public int getMbNo() {
		return mbNo;
	}
	public void setMbNo(int mbNo) {
		this.mbNo = mbNo;
	}
	public int getDistance() {
		return distance;
	}
	public void setDistance(int distance) {
		this.distance = distance;
	}
	public String getOrderBy() {
		return orderBy;
	}
	public void setOrderBy(String orderBy) {
		this.orderBy = orderBy;
	}
	public double getMbMapY() {
		return mbMapY;
	}
	public void setMbMapY(double mbMapY) {
		this.mbMapY = mbMapY;
	}
	public double getMbMapX() {
		return mbMapX;
	}
	public void setMbMapX(double mbMapX) {
		this.mbMapX = mbMapX;
	}
	
	
	
	

}
