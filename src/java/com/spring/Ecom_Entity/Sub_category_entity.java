/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.Ecom_Entity;

import java.io.Serializable;
import java.util.List;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 *
 * @author HP
 */
@Entity
@Table(name="tbl_sub_category")
public class Sub_category_entity implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    
    @Column(unique = true)
    private String sub_name;
    
    @Column(columnDefinition = "text")
    private String sub_desc;
    @ManyToOne(cascade = CascadeType.ALL,fetch = FetchType.EAGER)
    @JoinColumn(name="category_id",referencedColumnName = "id")
    private Category_entity category;
    
    @OneToMany(mappedBy = "sub_category",fetch = FetchType.LAZY)
    private List<Product_entity> product;
    private int publication_status;

    public Sub_category_entity() {
    }

    public Sub_category_entity(String sub_name) {
        this.sub_name = sub_name;
    }

    public Sub_category_entity(int id, String sub_name, String sub_desc, Category_entity category, int publication_status) {
        this.id = id;
        this.sub_name = sub_name;
        this.sub_desc = sub_desc;
        this.category = category;
        this.publication_status = publication_status;
    }

    public Sub_category_entity(int id, String sub_name, String sub_desc, Category_entity category, List<Product_entity> product, int publication_status) {
        this.id = id;
        this.sub_name = sub_name;
        this.sub_desc = sub_desc;
        this.category = category;
        this.product = product;
        this.publication_status = publication_status;
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
     * @return the sub_name
     */
    public String getSub_name() {
        return sub_name;
    }

    /**
     * @param sub_name the sub_name to set
     */
    public void setSub_name(String sub_name) {
        this.sub_name = sub_name;
    }

    /**
     * @return the sub_desc
     */
    public String getSub_desc() {
        return sub_desc;
    }

    /**
     * @param sub_desc the sub_desc to set
     */
    public void setSub_desc(String sub_desc) {
        this.sub_desc = sub_desc;
    }

    /**
     * @return the category
     */
    public Category_entity getCategory() {
        return category;
    }

    /**
     * @param category the category to set
     */
    public void setCategory(Category_entity category) {
        this.category = category;
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
     * @return the product
     */
    public List<Product_entity> getProduct() {
        return product;
    }

    /**
     * @param product the product to set
     */
    public void setProduct(List<Product_entity> product) {
        this.product = product;
    }

   
}
