package com.hxd.domain;


import java.io.Serializable;

public class User implements Serializable {

    private static final long serialVersionUID = 3223826255709023774L;
    private int id;
    private String username;
    private int age;
    private String email;

    private Page page = new Page();

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public Page getPage() {
        return page;
    }

    public void setPage(Page page) {
        this.page = page;
    }
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

}
