package com.hxd.domain;

import java.io.Serializable;

/**
 * Created by hexudong on 2019/5/9 17:48
 */
public class JsonResult implements Serializable {
    private static final long serialVersionUID = -829863236792582133L;
    private String flag;
    private String msg;
    private Object data;
    private int code;
    private int count;

    public String getFlag() {
        return flag;
    }

    public void setFlag(String flag) {
        this.flag = flag;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public Object getData() {
        return data;
    }

    public void setData(Object data) {
        this.data = data;
    }

    public int getCode() {
        return code;
    }

    public void setCode(int code) {
        this.code = code;
    }

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }
}
