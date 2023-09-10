/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.pack;

/**
 *
 * @author HP
 */
public class users {
    private String email;
    private String password;
    private String name;
    private String car_model;
    private String res_address;

    public String getRes_address() {
        return res_address;
    }

    public void setRes_address(String res_address) {
        this.res_address = res_address;
    }
    private String licence_number;
    private int purchase_year;
    private String accident_location;
    private String date_of_accident;
    private int damage_amount;
    private String accident_description;

    public String getAccident_location() {
        return accident_location;
    }

    public void setAccident_location(String accident_location) {
        this.accident_location = accident_location;
    }

    public String getDate_of_accident() {
        return date_of_accident;
    }

    public void setDate_of_accident(String date_of_accident) {
        this.date_of_accident = date_of_accident;
    }

    public int getDamage_amount() {
        return damage_amount;
    }

    public void setDamage_amount(int damage_amount) {
        this.damage_amount = damage_amount;
    }

    public String getAccident_description() {
        return accident_description;
    }

    public void setAccident_description(String accident_description) {
        this.accident_description = accident_description;
    }

    public String getCar_model() {
        return car_model;
    }

    public void setCar_model(String car_model) {
        this.car_model = car_model;
    }

    public String getLicence_number() {
        return licence_number;
    }

    public void setLicence_number(String licence_number) {
        this.licence_number = licence_number;
    }

    public int getPurchase_year() {
        return purchase_year;
    }

    public void setPurchase_year(int purchase_year) {
        this.purchase_year = purchase_year;
    }
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
    
    
}
