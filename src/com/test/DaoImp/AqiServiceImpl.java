package com.test.DaoImp;

import java.util.List;

import com.test.bean.PageBean;
import com.test.dao.AqiPageDAO;
import com.test.dao.AqiService;
import com.test.model.Aqi;

/**AQI分页
 * @author 凌云客
 *
 */
public class AqiServiceImpl implements AqiService
{
    private AqiPageDAO aqiPageDAO = new AqiPageDAOImpl();
    
    /**
     * pageSize为每页显示的记录数
     * page为当前显示的网页
     */
    @Override
    public PageBean getPageBean(int pageSize, int page)
    {
        PageBean pageBean = new PageBean();
        
        String hql = "from Aqi";
        
        int allRows = aqiPageDAO.getAllRowCount(hql);
        
        int totalPage = pageBean.getTotalPages(pageSize, allRows);
        
        int currentPage = pageBean.getCurPage(page);
        
        int offset = pageBean.getCurrentPageOffset(pageSize, currentPage);
        
        List<Aqi> list = aqiPageDAO.queryByPage(hql, offset, pageSize);
        
        pageBean.setList(list);
        pageBean.setAllRows(allRows);
        pageBean.setCurrentPage(currentPage);
        pageBean.setTotalPage(totalPage);
        
        return pageBean;
    }
}