package com.cn.hnust.pojo;

public class Suggest {
    private Integer id;

    private Integer choosenumber;

    private String choosedescn;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getChoosenumber() {
        return choosenumber;
    }

    public void setChoosenumber(Integer choosenumber) {
        this.choosenumber = choosenumber;
    }

    public String getChoosedescn() {
        return choosedescn;
    }

    public void setChoosedescn(String choosedescn) {
        this.choosedescn = choosedescn == null ? null : choosedescn.trim();
    }
}