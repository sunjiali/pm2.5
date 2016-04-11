package com.test.action;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.test.DaoImp.StationServiceImp;
import com.test.bean.StationPageBean;
import com.test.dao.StationService;

public class StationPageAction extends ActionSupport
{
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private StationService stationService = new StationServiceImp();
    
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
        StationPageBean stationPageBean = stationService.getPageBean(50, page);
        
        HttpServletRequest request = ServletActionContext.getRequest();
        
        request.setAttribute("stationPageBean", stationPageBean);
        
        return SUCCESS;
    }
}