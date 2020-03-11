/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.Ecom_Entity;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/**
 *
 * @author HP
 */
@Entity
@Table(name="tbl_order_details")
public class Order_details_entity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    
    @ManyToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "order_id",referencedColumnName = "id")
    private Order_entity order;
    
    @ManyToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "product_id",referencedColumnName = "id")
    private Product_entity product;
    
    private double product_price;
    private int product_sales_quantity;

    public Order_details_entity() {
    }

    public Order_details_entity(int id, Order_entity order, Product_entity product, double product_price, int product_sales_quantity) {
        this.id = id;
        this.order = order;
        this.product = product;
        this.product_price = product_price;
        this.product_sales_quantity = product_sales_quantity;
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
     * @return the order
     */
    public Order_entity getOrder() {
        return order;
    }

    /**
     * @param order the order to set
     */
    public void setOrder(Order_entity order) {
        this.order = order;
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

    /**
     * @return the product_price
     */
    public double getProduct_price() {
        return product_price;
    }

    /**
     * @param product_price the product_price to set
     */
    public void setProduct_price(double product_price) {
        this.product_price = product_price;
    }

    /**
     * @return the product_sales_quantity
     */
    public int getProduct_sales_quantity() {
        return product_sales_quantity;
    }

    /**
     * @param product_sales_quantity the product_sales_quantity to set
     */
    public void setProduct_sales_quantity(int product_sales_quantity) {
        this.product_sales_quantity = product_sales_quantity;
    }

    
}
