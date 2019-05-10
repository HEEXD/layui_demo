package com.hxd.domain;

import java.io.Serializable;

/**
 * Created by hexudong on 2019/5/10 09:26
 */
public class Page implements Serializable {
    private static final long serialVersionUID = -5788696920913204621L;
    private int pageStart = 0;
    private int pageSize = 10;
    private int pageNo = 1;

    public int getPageStart() {
        return pageStart;
    }

    public void setPageStart(int pageStart) {
        this.pageStart = pageStart;
    }

    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }

    public int getPageNo() {
        return pageNo;
    }

    public void setPageNo(int pageNo) {
        this.pageNo = pageNo;
    }
}
