package com.my0803.myapp.domain;

public class Criteria {

	
	private int page;  // �럹�씠吏� 踰덊샇�떞�뒗 蹂��닔 
	private int perPageNum;  // 由ъ뒪�듃�뿉 寃뚯떆臾� �닔 
	
	public Criteria () {
		this.setPage(1); 
		this.setPerPageNum(15);
	}
	public int getPage() {
		return page;
	}
	public void setPage(int page) {
		this.page = page;
	}
	public int getPerPageNum() {
		return perPageNum;
	}
	public void setPerPageNum(int perPageNum) {
		this.perPageNum = perPageNum;
	}


	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
