package app.domain;

public class SearchCriteria extends Criteria{
	private String contentsTypeId;
	private String keyword;
	
	public String getSearchTypeId()	{	return contentsTypeId;	}
	public String getKeyword()		{	return keyword;		}
	
	public void setSearchTypeId(String contentsTypeId)	{	this.contentsTypeId = contentsTypeId;	}
	public void setKeyword(String keyword)			{	this.keyword = keyword;		}

}
