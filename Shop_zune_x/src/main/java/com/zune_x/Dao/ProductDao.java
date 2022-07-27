package com.zune_x.Dao;


import java.math.BigDecimal;

public class ProductDao {
    private int id;
    private String name;
    private String code;
    private String status;
    private BigDecimal price;
    private String size;
    private int quantity;
    private String createAt;
    private String updateAt;
    private String urlImage;


    public ProductDao(int id, String name, String code, String status, BigDecimal price, String size, int quantity, String createAt, String updateAt, String urlImage) {
        this.id = id;
        this.name = name;
        this.code = code;
        this.status = status;
        this.price = price;
        this.size = size;
        this.quantity = quantity;
        this.createAt = createAt;
        this.updateAt = updateAt;
        this.urlImage = urlImage;
    }

    public String getCreateAt() {
        return createAt;
    }

    public void setCreateAt(String createAt) {
        this.createAt = createAt;
    }

    public String getUpdateAt() {
        return updateAt;
    }

    public void setUpdateAt(String updateAt) {
        this.updateAt = updateAt;
    }

    public String getUrlImage() {
        return urlImage;
    }

    public void setUrlImage(String urlImage) {
        this.urlImage = urlImage;
    }

    public ProductDao() {
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

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }

    public String getSize() {
        return size;
    }

    public void setSize(String size) {
        this.size = size;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;


    }
}
