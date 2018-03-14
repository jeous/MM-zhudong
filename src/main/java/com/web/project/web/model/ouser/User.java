package com.web.project.web.model.ouser;
import com.web.project.web.model.modelCore.pageFather;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;

import java.io.File;
import java.util.Date;

public class User extends pageFather {
    private String id;

    private String realname;

    private String idnumber;

    private String account;

    private String password;

    private Integer type;

    private String email;

    private String phone;

    private Boolean auditstatus;

    private Date audittime;

    private String auditor;

    private Boolean isenable;

    private String address;

    private String paypassword;

    private Date lastlogintime;

    private String creator;

    private Date createtime;

    private String modifier;

    private Date modifytime;

    private String firm;

    private String branch;

    private String roleids;
    private String rolename;
    private String avatarfile;

    private String usertype;

    public String getAvatarfile() {
        return avatarfile;
    }

    public void setAvatarfile(String avatarfile) {
        this.avatarfile=avatarfile;
    }

    public String getUsertype() {
        return usertype;
    }

    public void setUsertype(String usertype) {
       this.usertype=usertype;
    }

    public User(String id, String realname, String idnumber, String account, String password, Integer type, String email, String phone, Boolean auditstatus, Date audittime, String auditor, Boolean isenable, String address, String paypassword, Date lastlogintime, String creator, Date createtime, String modifier, Date modifytime, String firm, String branch) {
        this.id = id;
        this.realname = realname;
        this.idnumber = idnumber;
        this.account = account;
        this.password = password;
        this.type = type;
        this.email = email;
        this.phone = phone;
        this.auditstatus = auditstatus;
        this.audittime = audittime;
        this.auditor = auditor;
        this.isenable = isenable;
        this.address = address;
        this.paypassword = paypassword;
        this.lastlogintime = lastlogintime;
        this.creator = creator;
        this.createtime = createtime;
        this.modifier = modifier;
        this.modifytime = modifytime;
        this.firm = firm;
        this.branch = branch;
    }

    public User(String account, String password) {
        this.account = account;
        this.password = password;
    }

    public User() {
        super();
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    public String getRealname() {
        return realname;
    }

    public void setRealname(String realname) {
        this.realname = realname == null ? null : realname.trim();
    }

    public String getIdnumber() {
        return idnumber;
    }

    public void setIdnumber(String idnumber) {
        this.idnumber = idnumber == null ? null : idnumber.trim();
    }

    public String getAccount() {
        return account;
    }

    public void setAccount(String account) {
        this.account = account == null ? null : account.trim();
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password.trim();
    }

    public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email.trim();
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone =phone.trim();
    }

    public Boolean getAuditstatus() {
        return auditstatus;
    }

    public void setAuditstatus(Boolean auditstatus) {
        this.auditstatus = auditstatus;
    }

    public Date getAudittime() {
        return audittime;
    }

    public void setAudittime(Date audittime) {
        this.audittime = audittime;
    }

    public String getAuditor() {
        return auditor;
    }

    public void setAuditor(String auditor) {
        this.auditor = auditor == null ? null : auditor.trim();
    }

    public Boolean getIsenable() {
        return isenable;
    }

    public void setIsenable(Boolean isenable) {
        this.isenable = isenable;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address.trim();
    }

    public String getPaypassword() {
        return paypassword;
    }

    public void setPaypassword(String paypassword) {
        this.paypassword = paypassword;
    }

    public Date getLastlogintime() {
        return lastlogintime;
    }

    public void setLastlogintime(Date lastlogintime) {
        this.lastlogintime = lastlogintime;
    }

    public String getCreator() {
        return creator;
    }

    public void setCreator(String creator) {
        this.creator = creator == null ? null : creator.trim();
    }

    public Date getCreatetime() {
        return createtime;
    }

    public void setCreatetime(Date createtime) {
        this.createtime = createtime;
    }

    public String getModifier() {
        return modifier;
    }

    public void setModifier(String modifier) {
        this.modifier = modifier == null ? null : modifier.trim();
    }

    public Date getModifytime() {
        return modifytime;
    }

    public void setModifytime(Date modifytime) {
        this.modifytime = modifytime;
    }

    public String getFirm() {
        return firm;
    }

    public void setFirm(String firm) {
        this.firm = firm == null ? null : firm.trim();
    }

    public String getBranch() {
        return branch;
    }

    public void setBranch(String branch) {
        this.branch = branch == null ? null : branch.trim();
    }

    public String getRoleids() {
        return roleids;
    }

    public void setRoleids(String roleids) {
        this.roleids = roleids;
    }

    public String getRolename() {
        return rolename;
    }

    public void setRolename(String rolename) {
        this.rolename = rolename;
    }
}