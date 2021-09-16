package com.lyw.bean;

import java.io.Serializable;

/**
 * t_business
 * @author 
 */
public class TBusiness implements Serializable {
    private Integer bid;

    private String bnum;

    private String btype;

    private String bmark;

    private Integer bdid;

    private String bdname;

    private String bdperson;

    private static final long serialVersionUID = 1L;

    public Integer getBid() {
        return bid;
    }

    public void setBid(Integer bid) {
        this.bid = bid;
    }

    public String getBnum() {
        return bnum;
    }

    public void setBnum(String bnum) {
        this.bnum = bnum;
    }

    public String getBtype() {
        return btype;
    }

    public void setBtype(String btype) {
        this.btype = btype;
    }

    public String getBmark() {
        return bmark;
    }

    public void setBmark(String bmark) {
        this.bmark = bmark;
    }

    public Integer getBdid() {
        return bdid;
    }

    public void setBdid(Integer bdid) {
        this.bdid = bdid;
    }

    public String getBdname() {
        return bdname;
    }

    public void setBdname(String bdname) {
        this.bdname = bdname;
    }

    public String getBdperson() {
        return bdperson;
    }

    public void setBdperson(String bdperson) {
        this.bdperson = bdperson;
    }
}