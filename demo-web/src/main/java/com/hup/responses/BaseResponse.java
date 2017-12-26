package com.hup.responses;

/**
 * Created by nt on 2016-09-27.
 */
public class BaseResponse {

    String status;
    String desc;
    Object object;


    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getDesc() {
        return desc;
    }

    public void setDesc(String desc) {
        this.desc = desc;
    }

    public Object getObject() {
        return object;
    }

    public void setObject(Object object) {
        this.object = object;
    }
}
