package com.hup.entities;

import java.util.Date;

/**
 * Created by ppp.
 * 组织结构
 */
public class Organization {


    private Long id;// '序号',
    private Long pid;// '父节点',
    private int seq;// '排序',
    private int type;// '单位类型：0运维单位，1企事业单位',
    private String name;// '部门名称',
    private String address;//'部门地址',
    private String code;//'部门编码',
    private String icon;// '部门图标',
    private Date createdate;//'创建日期',


    @Override
    public String toString() {
        return "Organization{" +
                "id=" + id +
                ", pid=" + pid +
                ", seq=" + seq +
                ", type=" + type +
                ", name='" + name + '\'' +
                ", address='" + address + '\'' +
                ", code='" + code + '\'' +
                ", icon='" + icon + '\'' +
                ", createdate=" + createdate +
                '}';
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getPid() {
        return pid;
    }

    public void setPid(Long pid) {
        this.pid = pid;
    }

    public int getSeq() {
        return seq;
    }

    public void setSeq(int seq) {
        this.seq = seq;
    }

    public int getType() {
        return type;
    }

    public void setType(int type) {
        this.type = type;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getIcon() {
        return icon;
    }

    public void setIcon(String icon) {
        this.icon = icon;
    }

    public Date getCreatedate() {
        return createdate;
    }

    public void setCreatedate(Date createdate) {
        this.createdate = createdate;
    }
}
