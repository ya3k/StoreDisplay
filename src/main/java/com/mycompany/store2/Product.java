/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.store2;

/**
 *
 * @author dvan2301
 */
public class Product {
    private String imgUrl;
    private String name;
    private String sellway;
    private double amount;
    private String Status;  

    public Product() {
    }

    public Product(String imgUrl, String name,String sellway, double amount, String Status) {
        this.imgUrl = imgUrl;
        this.name = name;
        this.sellway = sellway;
        this.amount = amount;
        this.Status = Status;
    }

    public String getImgUrl() {
        return imgUrl;
    }

    public void setImgUrl(String imgUrl) {
        this.imgUrl = imgUrl;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSellway() {
        return sellway;
    }

    public void setSellway(String sellway) {
        this.sellway = sellway;
    }

    
    public double getAmount() {
        return amount;
    }

    public void setAmount(double amount) {
        this.amount = amount;
    }

    public String getStatus() {
        return Status;
    }

    public void setStatus(String Status) {
        this.Status = Status;
    }
    
}
