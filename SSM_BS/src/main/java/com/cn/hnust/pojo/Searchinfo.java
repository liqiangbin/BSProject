package com.cn.hnust.pojo;

public class Searchinfo {
    private Integer id;

    private Integer customerid;

    private String searchwords;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getCustomerid() {
        return customerid;
    }

    public void setCustomerid(Integer customerid) {
        this.customerid = customerid;
    }

    public String getSearchwords() {
        return searchwords;
    }

    public void setSearchwords(String searchwords) {
        this.searchwords = searchwords == null ? null : searchwords.trim();
    }
}