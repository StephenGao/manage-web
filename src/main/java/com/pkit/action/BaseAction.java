package com.pkit.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;
import org.apache.struts2.interceptor.SessionAware;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Map;

public class BaseAction extends ActionSupport {

    protected Log log = LogFactory.getLog(this.getClass());
    protected HttpServletRequest request= ServletActionContext.getRequest();
    protected HttpServletResponse response=ServletActionContext.getResponse();
    protected Map<String, Object> session=ActionContext.getContext().getSession();
    protected Map<String, Object> application=ActionContext.getContext().getApplication();

    protected Integer pageSize=20;
    protected Integer pageNumber=1;

    public static final String JSON = "json";
    public static final String XML = "xml";
    public static final String TEXT = "text";

    //JSON对象压入 页面
    protected <E> void putJSONResult(E data) {
        ActionContext.getContext().put(JSON, data);
    }

    //XML对象压入页面
    protected <E> void putXmlResult(E data) {

        ActionContext.getContext().put(XML, data);
    }

    //TXET对象压入页面
    protected <E> void putTextResult(E data) {
        ActionContext.getContext().put(TEXT, data);
    }


}
