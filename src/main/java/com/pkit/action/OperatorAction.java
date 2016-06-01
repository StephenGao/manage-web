package com.pkit.action;
import com.pkit.common.Page;
import com.pkit.model.Operator;
import com.pkit.model.result.ResultGrid;
import com.pkit.service.OperatorManager;
import com.pkit.util.DataType;
import com.pkit.util.JSONUtils;
import com.pkit.vo.OperatorQuery;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.Date;

@Namespace("/Operator")
@ParentPackage("manage")
public class OperatorAction extends BaseAction{

	@Autowired
	private OperatorManager operatorManager;
	private Operator operator;
	private OperatorQuery operatorQuery;


	@Action("list")
    public String list(){
		return SUCCESS;
	}

	@Action("getData")
	public String getData(){
		ResultGrid<Operator> resultGrid=new ResultGrid<Operator>();
		int pageIndex = DataType.getInt(request.getParameter("page"),1);
		int pageSize =DataType.getInt(request.getParameter("rows"),1);
		if(operatorQuery==null)
			operatorQuery=new OperatorQuery();
		operatorQuery.setPageSize(pageSize);
		operatorQuery.setPageNumber(pageIndex);
		Page<Operator> page=operatorManager.findPage(operatorQuery);

		resultGrid.setPage(page.getThisPageNumber());
		resultGrid.setTotal(page.getLastPageNumber());
		resultGrid.setRecords(page.getTotal());
		resultGrid.setRows(page.getRows());

		putJSONResult(JSONUtils.object2json(resultGrid));
		return JSON;
	}



	@Action("save")
	public String save(){
		if(operator==null)
		    operator=new Operator();
		operator.setLoginName("11111");
		operator.setCreateTime(new Date());
		operatorManager.save(operator);
		return JSON;
	}




	public Operator getOperator() {
		return operator;
	}

	public void setOperator(Operator operator) {
		this.operator = operator;
	}

	public OperatorQuery getOperatorQuery() {
		return operatorQuery;
	}

	public void setOperatorQuery(OperatorQuery operatorQuery) {
		this.operatorQuery = operatorQuery;
	}
}
