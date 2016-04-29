package com.cn.hnust.pojo;

public class Interest {
    private Integer id;

    private Integer customerid;

    private String interestedsubtypeid;

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

    public String getInterestedsubtypeid() {
        return interestedsubtypeid;
    }

    public void setInterestedsubtypeid(String interestedsubtypeid) {
        this.interestedsubtypeid = interestedsubtypeid == null ? null : interestedsubtypeid.trim();
    }
}