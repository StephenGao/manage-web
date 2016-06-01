
package com.pkit.model.result;
import java.util.*;

public class ResultGrid<T> {


	private List<T> rows;
	public List<T> getRows() {
		return rows;
	}

	public void setRows(List<T> value) {
		this.rows = value;
	}
	
	private Integer total;
	public Integer getTotal(){
		return total;
	}
	
	/** 总页数 */
	public void setTotal(Integer value)
	{
		this.total=value;
	}
	
	private Integer page;
	public Integer getPage(){
		return page;
	}
	/** 当前页数 */
	public void setPage(Integer value)
	{
		this.page=value;
	}
	
	private Integer records;
	public Integer getRecords(){
		return records;
	}
	/** 总记录数 */
	public void setRecords(Integer value)
	{
		this.records=value;
	}
}

