package com.web.project.web.model;

import java.util.Date;

/**
 * Created by Server on 2018/2/2.
 */
public class Recruit {
    public String getID() {
        return ID;
    }

    public void setID(String ID) {
        this.ID = ID;
    }

    public String getPNAME() {
        return PNAME;
    }

    public void setPNAME(String PNAME) {
        this.PNAME = PNAME;
    }

    public String getPROVINCE() {
        return PROVINCE;
    }

    public void setPROVINCE(String PROVINCE) {
        this.PROVINCE = PROVINCE;
    }

    public Date getCREATETIME() {
        return CREATETIME;
    }

    public void setCREATETIME(Date CREATETIME) {
        this.CREATETIME = CREATETIME;
    }

    public Recruit(String ID, String PNAME, String PROVINCE, Date CREATETIME) {
        this.ID = ID;
        this.PNAME = PNAME;
        this.PROVINCE = PROVINCE;
        this.CREATETIME = CREATETIME;
    }
    public Recruit() {

    }
    private String ID;
    private String PNAME;
    private String PROVINCE;
    private Date CREATETIME;
}
