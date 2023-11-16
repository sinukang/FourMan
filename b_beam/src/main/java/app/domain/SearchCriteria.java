package app.domain;

public class SearchCriteria extends Criteria{
	private String contentsTypeId;
	private String SearchTypeId;
	private String keyword;

	public String getContentsTypeId()	{	return contentsTypeId;	}
	public String getSearchTypeId()		{	return SearchTypeId;	}
	public String getKeyword()			{	return keyword;			}

	public void setContentsTypeId(String contentsTypeId)	{	this.contentsTypeId = contentsTypeId;	}
	public void setSearchTypeId(String SearchTypeId)		{	this.SearchTypeId = SearchTypeId;	}
	public void setKeyword(String keyword)					{	this.keyword = keyword;				}

}
