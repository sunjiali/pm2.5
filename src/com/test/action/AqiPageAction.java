package com.test.action;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.test.DaoImp.AqiServiceImpl;
import com.test.bean.PageBean;
import com.test.dao.AqiService;

public class AqiPageAction extends ActionSupport
{
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private AqiService aqiService = new AqiServiceImpl();
    
    private int page;
    
    public int getPage()
    {
        return page;
    }

    public void setPage(int page)
    {
        this.page = page;
    }

    @Override
    public String execute() throws Exception
    {
        //表示每页显示5条记录，page表示当前网页
        PageBean pageBean = aqiService.getPageBean(50, page);
        
        HttpServletRequest request = ServletActionContext.getRequest();
        
        request.setAttribute("pageBean", pageBean);
        
        return SUCCESS;
    }
}