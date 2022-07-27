package com.zune_x.model;

import java.time.LocalDate;

public class Account {
    private int id;
    private String name;
    private int phone;
    private LocalDate date;
    private String email;
    private String pass;
    private LocalDate createAt;
    private LocalDate updateAt;

    public Account() {
    }

    public Account(int id, String name, int phone, LocalDate date, String email, String pass, LocalDate createAt, LocalDate updateAt) {
        this.id = id;
        this.name = name;
        this.phone = phone;
        this.date = date;
        this.email = email;
        this.pass = pass;
        this.createAt = createAt;
        this.updateAt = updateAt;
    }

    public Account(int id, String name, int phone, LocalDate date, String email, String pass, LocalDate createAt) {
        this.id = id;
        this.name = name;
        this.phone = phone;
        this.date = date;
        this.email = email;
        this.pass = pass;
        this.createAt = createAt;
    }

    public Account(String name, String pass) {
        this.name = name;
        this.pass = pass;
    }

    public Account(String name, int phone, LocalDate date, String email, String pass, LocalDate createAt, LocalDate updateAt) {
        this.name = name;
        this.phone = phone;
        this.date = date;
        this.email = email;
        this.pass = pass;
        this.createAt = createAt;
        this.updateAt = updateAt;

    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getPhone() {
        return phone;
    }

    public void setPhone(int phone) {
        this.phone = phone;
    }

    public LocalDate getDate() {
        return date;
    }

    public void setDate(LocalDate date) {
        this.date = date;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public LocalDate getCreateAt() {
        return createAt;
    }

    public void setCreateAt(LocalDate createAt) {
        this.createAt = createAt;
    }

    public LocalDate getUpdateAt() {
        return updateAt;
    }

    public void setUpdateAt(LocalDate updateAt) {
        this.updateAt = updateAt;
    }

    @Override
    public String toString() {
        return "Account{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", phone=" + phone +
                ", date=" + date +
                ", email='" + email + '\'' +
                ", pass='" + pass + '\'' +
                ", createAt=" + createAt +
                ", updateAt=" + updateAt +
                '}';
    }
}
