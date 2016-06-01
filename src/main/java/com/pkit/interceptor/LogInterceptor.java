package com.pkit.interceptor;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;
import net.sf.json.JSONObject;
import org.apache.log4j.Logger;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * Created by xiaoping on 2016/5/24.
 */
public class LogInterceptor extends AbstractInterceptor {

    private static Logger logger = Logger.getLogger(LogInterceptor.class);


    @Override
    public String intercept(ActionInvocation actionInvocation) throws Exception {
        List<String> methods = new ArrayList<String>();
        methods.add("save");
        methods.add("update");
        methods.add("delete");

        Map session = actionInvocation.getInvocationContext().getSession();
        Object action = actionInvocation.getAction();
        String method = actionInvocation.getProxy().getMethod();
        Map<String, Object> paramMap = actionInvocation.getInvocationContext().getContextMap();
        String param ="";
        if(paramMap != null && paramMap.get("parameters")!=null) {
            Map parameters = (Map) paramMap.get("parameters");
            if (parameters.size() > 0)
                param = JSONObject.fromObject(parameters).toString();
        }
        logger.info("调用Action为["+action.getClass().getName()+"],调用方法为["+method+"],传入参数为["+param+"]");
        if(methods.contains(method)){
            //记录日志
        }
        return actionInvocation.invoke();
    }


}
