package com.mh.web.action;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.opensymphony.xwork2.ActionSupport;

public class BaseAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 4654203559751179042L;
	
	public static final String RESULT_JSONSTRING = "jsonstring";
	
	private static final Log logger = LogFactory.getLog(BaseAction.class) ;
	
	private int page = 1;

	private long total;

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public long getTotal() {
		return total;
	}

	public void setTotal(long total) {
		this.total = total;
	}
	
	

}
