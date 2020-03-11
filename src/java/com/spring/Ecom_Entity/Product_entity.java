/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.Ecom_Entity;

import java.util.List;
import javax.persistence.Entity;
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
@Table(name="tbl_product")
public class Product_entity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    @OneToMany(mappedBy = "product")
    private List<Order_details_entity> details;
    
    @ManyToOne()
    @JoinColumn(name = "category_id",referencedColumnName = "id")
    private Category_entity category;
    
    @ManyToOne()
    @JoinColumn(name = "sub_category_id",referencedColumnName = "id")
    private Sub_category_entity sub_category;
    
    @ManyToOne()
    @JoinColumn(name = "manufacture_id", referencedColumnName = "id")
    private Manufacture_entity manufacture;
    
    @OneToMany(mappedBy = "product")
    private List<Image_Entity> images;
    
    private String product_name;
    private String short_description;
    private String long_description;
    private String product_image;
    private String product_size;
    private String product_color;
    private int product_price;
    private int publication_status;
    private int product_quantity;

    public Product_entity() {

    }

    public Product_entity(int id, List<Order_details_entity> details, Category_entity category, Sub_category_entity sub_category, Manufacture_entity manufacture, List<Image_Entity> images, String product_name, String short_description, String long_description, String product_image, String product_size, String product_color, int product_price, int publication_status, int product_quantity) {
        this.id = id;
        this.details = details;
        this.category = category;
        this.sub_category = sub_category;
        this.manufacture = manufacture;
        this.images = images;
        this.product_name = product_name;
        this.short_description = short_description;
        this.long_description = long_description;
        this.product_image = product_image;
        this.product_size = product_size;
        this.product_color = product_color;
        this.product_price = product_price;
        this.publication_status = publication_status;
        this.product_quantity = product_quantity;
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
     * @return the product_name
     */
    public String getProduct_name() {
        return product_name;
    }

    /**
     * @param product_name the product_name to set
     */
    public void setProduct_name(String product_name) {
        this.product_name = product_name;
    }

    /**
     * @return the short_description
     */
    public String getShort_description() {
        return short_description;
    }

    /**
     * @param short_description the short_description to set
     */
    public void setShort_description(String short_description) {
        this.short_description = short_description;
    }

    /**
     * @return the long_description
     */
    public String getLong_description() {
        return long_description;
    }

    /**
     * @param long_description the long_description to set
     */
    public void setLong_description(String long_description) {
        this.long_description = long_description;
    }

    /**
     * @return the product_image
     */
    public String getProduct_image() {
        return product_image;
    }

    /**
     * @param product_image the product_image to set
     */
    public void setProduct_image(String product_image) {
        this.product_image = product_image;
    }

    /**
     * @return the product_size
     */
    public String getProduct_size() {
        return product_size;
    }

    /**
     * @param product_size the product_size to set
     */
    public void setProduct_size(String product_size) {
        this.product_size = product_size;
    }

    /**
     * @return the product_color
     */
    public String getProduct_color() {
        return product_color;
    }

    /**
     * @param product_color the product_color to set
     */
    public void setProduct_color(String product_color) {
        this.product_color = product_color;
    }

    /**
     * @return the product_price
     */
    public int getProduct_price() {
        return product_price;
    }

    /**
     * @param product_price the product_price to set
     */
    public void setProduct_price(int product_price) {
        this.product_price = product_price;
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
     * @return the product_quantity
     */
    public int getProduct_quantity() {
        return product_quantity;
    }

    /**
     * @param product_quantity the product_quantity to set
     */
    public void setProduct_quantity(int product_quantity) {
        this.product_quantity = product_quantity;
    }

    /**
     * @return the sub_category
     */
    public Sub_category_entity getSub_category() {
        return sub_category;
    }

    /**
     * @param sub_category the sub_category to set
     */
    public void setSub_category(Sub_category_entity sub_category) {
        this.sub_category = sub_category;
    }

    /**
     * @return the manufacture
     */
    public Manufacture_entity getManufacture() {
        return manufacture;
    }

    /**
     * @param manufacture the manufacture to set
     */
    public void setManufacture(Manufacture_entity manufacture) {
        this.manufacture = manufacture;
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
     * @return the images
     */
    public List<Image_Entity> getImages() {
        return images;
    }

    /**
     * @param images the images to set
     */
    public void setImages(List<Image_Entity> images) {
        this.images = images;
    }

    /**
     * @return the details
     */
    public List<Order_details_entity> getDetails() {
        return details;
    }

    /**
     * @param details the details to set
     */
    public void setDetails(List<Order_details_entity> details) {
        this.details = details;
    }
}
