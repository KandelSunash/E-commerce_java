/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.Ecom_Entity;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/**
 *
 * @author HP
 */
@Entity
@Table(name="tbl_image")
public class Image_Entity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int image_id;
    private String image_name;
    private String image_description;
    @ManyToOne(cascade = CascadeType.ALL,fetch = FetchType.LAZY)
    private Product_entity product;

    /**
     * @return the image_id
     */
    public int getImage_id() {
        return image_id;
    }

    /**
     * @param image_id the image_id to set
     */
    public void setImage_id(int image_id) {
        this.image_id = image_id;
    }

    /**
     * @return the image_name
     */
    public String getImage_name() {
        return image_name;
    }

    /**
     * @param image_name the image_name to set
     */
    public void setImage_location(String image_name) {
        this.image_name = image_name;
    }

    /**
     * @return the image_description
     */
    public String getImage_description() {
        return image_description;
    }

    /**
     * @param image_description the image_description to set
     */
    public void setImage_description(String image_description) {
        this.image_description = image_description;
    }

    /**
     * @return the product
     */
    public Product_entity getProduct() {
        return product;
    }

    /**
     * @param product the product to set
     */
    public void setProduct(Product_entity product) {
        this.product = product;
    }
}
