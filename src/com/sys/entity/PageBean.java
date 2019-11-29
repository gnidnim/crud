package com.sys.entity;

public class PageBean {

    private Integer pageSize = 4;
    private Integer page;
    private Integer pageTotal;
    private Integer count;


    public Integer getPageSize() {
        return pageSize;
    }

    public void setPageSize(Integer pageSize) {
        this.pageSize = pageSize;
    }

    public Integer getPage() {
        return page;
    }

    public void setPage(Integer page) {
        this.page = page;
    }

    public Integer getPageTotal() {
        return count % pageSize == 0 ? count / pageSize : count / pageSize + 1;
    }

    public void setPageTotal(Integer pageTotal) {
        this.pageTotal = pageTotal;
    }

    public Integer getCount() {
        return count;
    }

    public void setCount(Integer count) {
        this.count = count;
    }

    public Integer getCurrentPage() {
        return (page - 1) * pageSize;
    }
}
