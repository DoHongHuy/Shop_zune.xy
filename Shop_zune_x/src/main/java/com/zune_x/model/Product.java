package com.zune_x.model;

import java.math.BigDecimal;

public class Product    {
    private int id;
    private String img ;
    private String name;
    private BigDecimal price;
    private int quantity;
    private int idType;
    private String information;

    public Product() {
    }

    public Product(int id, String img, String name, BigDecimal price, int quantity, int idType, String information) {
        this.id = id;
        this.img = img;
        this.name = name;
        this.price = price;
        this.quantity = quantity;
        this.idType = idType;
        this.information = information;
    }

    public Product(String img_product, String name_product, BigDecimal price_product, int quantity_product, int idTypr_product, int information_product) {
        this.img = img;
        this.name = name;
        this.price = price;
        this.quantity = quantity;
        this.idType = idType;
        this.information = information;

    }

    public Product( String img, String name, BigDecimal price, int quantity) {
        this.img = img;
        this.name = name;
        this.price = price;
        this.quantity = quantity;
    }

    public Product(String name, BigDecimal price, int quantity, int idType, String information) {
        this.name = name;
        this.price = price;
        this.quantity = quantity;
        this.idType = idType;
        this.information = information;
    }

    public Product(String img, String name, BigDecimal price, int quantity, int idType) {
        this.img = img;
        this.name = name;
        this.price = price;
        this.quantity = quantity;
        this.idType = idType;
    }

    public Product(int id, String img, String name, BigDecimal price, int quantity, int idType) {
        this.id = id;
        this.img = img;
        this.name = name;
        this.price = price;
        this.quantity = quantity;
        this.idType = idType;
        this.information = information;
    }

    public Product(String img, String name, BigDecimal price, int quantity, int idType, String information) {
        this.img = img;
        this.name = name;
        this.price = price;
        this.quantity = quantity;
        this.idType = idType;
        this.information = information;
    }

    public Product(int id, String name, BigDecimal price, int quantity, int idType, String information) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.quantity = quantity;
        this.idType = idType;
        this.information = information;

    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public int getIdType() {
        return idType;
    }

    public void setIdType(int idType) {
        this.idType = idType;
    }

    public String getInformation() {
        return information;
    }

    public void setInformation(String information) {
        this.information = information;
    }

    @Override
    public String toString() {
        return "Product{" +
                "id=" + id +
                ", img='" + img + '\'' +
                ", name='" + name + '\'' +
                ", price=" + price +
                ", quantity=" + quantity +
                ", idType=" + idType +
                ", information='" + information + '\'' +
                '}';
    }
}
