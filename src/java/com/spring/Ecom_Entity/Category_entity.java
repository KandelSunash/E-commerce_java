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
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 *
 * @author HP
 */
@Entity
@Table(name = "tbl_category")
public class Category_entity implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    @Column(unique = true)
    private String category_name;
    @Column(columnDefinition = "text")
    private String category_description;
    private int publication_status;
    private String created_by;
    private String modified_by;
    @ManyToMany(mappedBy = "category",fetch = FetchType.EAGER)
    private List<Manufacture_entity> manufacture;

    @OneToMany(mappedBy = "category", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    private List<Product_entity> product;

    @OneToMany(mappedBy = "category", cascade = CascadeType.ALL, fetch = FetchType.EAGER)
    private List<Sub_category_entity> sub_category;
    @Column(columnDefinition = "boolean")
    private boolean flag;

    public Category_entity() {
    }

    public Category_entity(int id, String category_name, String category_description, int publication_status, String created_by, String modified_by, List<Manufacture_entity> manufacture, List<Product_entity> product, List<Sub_category_entity> sub_category, boolean flag) {
        this.id = id;
        this.category_name = category_name;
        this.category_description = category_description;
        this.publication_status = publication_status;
        this.created_by = created_by;
        this.modified_by = modified_by;
        this.manufacture = manufacture;
        this.product = product;
        this.sub_category = sub_category;
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
     * @return the category_name
     */
    public String getCategory_name() {
        return category_name;
    }

    /**
     * @param category_name the category_name to set
     */
    public void setCategory_name(String category_name) {
        this.category_name = category_name;
    }

    /**
     * @return the category_description
     */
    public String getCategory_description() {
        return category_description;
    }

    /**
     * @param category_description the category_description to set
     */
    public void setCategory_description(String category_description) {
        this.category_description = category_description;
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
     * @return the created_by
     */
    public String getCreated_by() {
        return created_by;
    }

    /**
     * @param created_by the created_by to set
     */
    public void setCreated_by(String created_by) {
        this.created_by = created_by;
    }

    /**
     * @return the modified_by
     */
    public String getModified_by() {
        return modified_by;
    }

    /**
     * @param modified_by the modified_by to set
     */
    public void setModified_by(String modified_by) {
        this.modified_by = modified_by;
    }

    /**
     * @return the manufacture
     */
    public List<Manufacture_entity> getManufacture() {
        return manufacture;
    }

    /**
     * @param manufacture the manufacture to set
     */
    public void setManufacture(List<Manufacture_entity> manufacture) {
        this.manufacture = manufacture;
    }

    /**
     * @return the sub_category
     */
    public List<Sub_category_entity> getSub_category() {
        return sub_category;
    }

    /**
     * @param sub_category the sub_category to set
     */
    public void setSub_category(List<Sub_category_entity> sub_category) {
        this.sub_category = sub_category;
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
