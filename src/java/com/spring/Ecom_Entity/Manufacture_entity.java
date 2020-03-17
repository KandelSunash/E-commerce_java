/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.Ecom_Entity;

import java.io.Serializable;
import java.util.List;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 *
 * @author HP
 */
@Entity
@Table(name="tbl_manufacture")
public class Manufacture_entity implements Serializable {
    @Id 
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    @Column(unique = true)
    private String manufacture_name;

    @Column(columnDefinition = "text")
    private String manufacture_description;
    private int publication_status;
    @ManyToMany(fetch = FetchType.EAGER)
    @JoinTable(name="tbl_category_manufacture",joinColumns = @JoinColumn(name = "manufacture_id"), 
            inverseJoinColumns = @JoinColumn(name = "category_id"))
    private List<Category_entity> category;
    @OneToMany(mappedBy = "manufacture",fetch = FetchType.EAGER)
    private List<Product_entity> product1;
    @Column(columnDefinition = "boolean")
    private boolean flag;
    
    public Manufacture_entity() {
    }

    public Manufacture_entity(String manufacture_name) {
        this.manufacture_name = manufacture_name;
    }

    public Manufacture_entity(int id, String manufacture_name, String manufacture_description, int publication_status, List<Category_entity> category) {
        this.id = id;
        this.manufacture_name = manufacture_name;
        this.manufacture_description = manufacture_description;
        this.publication_status = publication_status;
        this.category = category;
    }

    public Manufacture_entity(int id, String manufacture_name, String manufacture_description, int publication_status, List<Category_entity> category, List<Product_entity> product1, boolean flag) {
        this.id = id;
        this.manufacture_name = manufacture_name;
        this.manufacture_description = manufacture_description;
        this.publication_status = publication_status;
        this.category = category;
        this.product1 = product1;
        this.flag = flag;
    }

   
    
    /**
     * @return the id
     */
    public int getId() {
        return id;
    }

    /**
     * @param id the id to set
     */
    public void setId(int id) {
        this.id = id;
    }

    /**
     * @return the manufacture_name
     */
    public String getManufacture_name() {
        return manufacture_name;
    }

    /**
     * @param manufacture_name the manufacture_name to set
     */
    public void setManufacture_name(String manufacture_name) {
        this.manufacture_name = manufacture_name;
    }

    /**
     * @return the manufacture_description
     */
    public String getManufacture_description() {
        return manufacture_description;
    }

    /**
     * @param manufacture_description the manufacture_description to set
     */
    public void setManufacture_description(String manufacture_description) {
        this.manufacture_description = manufacture_description;
    }

    /**
     * @return the publication_status
     */
    public int getPublication_status() {
        return publication_status;
    }

    /**
     * @param publication_status the publication_status to set
     */
    public void setPublication_status(int publication_status) {
        this.publication_status = publication_status;
    }

    /**
     * @return the category
     */
    public List<Category_entity> getCategory() {
        return category;
    }

    /**
     * @param category the category to set
     */
    public void setCategory(List<Category_entity> category) {
        this.category = category;
    }

    /**
     * @return the product1
     */
    public List<Product_entity> getProduct1() {
        return product1;
    }

    /**
     * @param product1 the product to set
     */
    public void setProduct(List<Product_entity> product1) {
        this.product1 = product1;
    }

    /**
     * @return the flag
     */
    public boolean isFlag() {
        return flag;
    }

    /**
     * @param flag the flag to set
     */
    public void setFlag(boolean flag) {
        this.flag = flag;
    }

}