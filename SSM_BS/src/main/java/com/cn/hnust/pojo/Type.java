package com.cn.hnust.pojo;

public class Type {
    private Integer id;

    private Integer typenumber;

    private String typedescn;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getTypenumber() {
        return typenumber;
    }

    public void setTypenumber(Integer typenumber) {
        this.typenumber = typenumber;
    }

    public String getTypedescn() {
        return typedescn;
    }

    public void setTypedescn(String typedescn) {
        this.typedescn = typedescn == null ? null : typedescn.trim();
    }
}