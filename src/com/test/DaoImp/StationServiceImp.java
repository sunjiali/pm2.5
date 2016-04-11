package com.test.DaoImp;

import java.util.List;

import com.test.bean.StationPageBean;
import com.test.dao.StationPageDao;
import com.test.dao.StationService;
import com.test.model.Station;

public class StationServiceImp implements StationService
{
    private StationPageDao stationPageDAO = new StationPageDaoImp();
    
    /**
     * pageSize为每页显示的记录数
     * page为当前显示的网页
     */
    @Override
    public StationPageBean getPageBean(int pageSize, int page)
    {
    	StationPageBean stationPageBean = new StationPageBean();
        
        String hql = "from Station";
        
        int allRows = stationPageDAO.getAllRowCount(hql);
        
        int totalPage = stationPageBean.getTotalPages(pageSize, allRows);
        
        int currentPage = stationPageBean.getCurPage(page);
        
        int offset = stationPageBean.getCurrentPageOffset(pageSize, currentPage);
        
        List<Station> list = stationPageDAO.queryByPage(hql, offset, pageSize);
        
        stationPageBean.setList(list);
        stationPageBean.setAllRows(allRows);
        stationPageBean.setCurrentPage(currentPage);
        stationPageBean.setTotalPage(totalPage);
        
        return stationPageBean;
    }
}