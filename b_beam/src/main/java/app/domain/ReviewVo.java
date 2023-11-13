package app.domain;

public class ReviewVo {
	private int rvno;
	private int mbno;
	private String contentid;
	private String rvcont;
	private String rvpic;
	private String rvrate;
	private String rvdate;
	private int rvLikeCnt;
	
	public int getRvno() {
		return rvno;
	}
	public void setRvno(int rvno) {
		this.rvno = rvno;
	}
	public int getMbno() {
		return mbno;
	}
	public void setMbno(int mbno) {
		this.mbno = mbno;
	}
	public String getContentid() {
		return contentid;
	}
	public void setContentid(String contentid) {
		this.contentid = contentid;
	}
	public String getRvcont() {
		return rvcont;
	}
	public void setRvcont(String rvcont) {
		this.rvcont = rvcont;
	}
	public String getRvpic() {
		return rvpic;
	}
	public void setRvpic(String rvpic) {
		this.rvpic = rvpic;
	}
	public String getRvrate() {
		return rvrate;
	}
	public void setRvrate(String rvrate) {
		this.rvrate = rvrate;
	}
	public String getRvdate() {
		return rvdate;
	}
	public void setRvdate(String rvdate) {
		this.rvdate = rvdate;
	}
	public int getRvLikeCnt() {
		return rvLikeCnt;
	}
	public void setRvLikeCnt(int rvLikeCnt) {
		this.rvLikeCnt = rvLikeCnt;
	}
	
}
