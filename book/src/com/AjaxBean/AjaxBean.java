package com.AjaxBean;

import com.action.UserAction;

public class AjaxBean {
	public boolean chkLoginName(String loginName){
		UserAction service = new UserAction();
		boolean result = false;
		
		try {
			result = service.chkLoginName(loginName);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}

}
