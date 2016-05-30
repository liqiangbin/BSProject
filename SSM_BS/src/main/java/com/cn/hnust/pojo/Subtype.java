package com.cn.hnust.pojo;

public class Subtype {
    private Integer id;

    private Integer typenumber;

    private String subtypedescn;

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

    public String getSubtypedescn() {
        return subtypedescn;
    }

    public void setSubtypedescn(String subtypedescn) {
        this.subtypedescn = subtypedescn == null ? null : subtypedescn.trim();
    }
}