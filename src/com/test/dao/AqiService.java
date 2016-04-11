package com.test.dao;

import com.test.bean.PageBean;

public interface AqiService
{
    public PageBean getPageBean(int pageSize, int page);
}