/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.Ecom_Entity;

import java.io.Serializable;
import java.util.List;
import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

/**
 *
 * @author HP
 */
@Entity
@Table(name="tbl_order")
public class Order_entity implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    @OneToMany(mappedBy = "order",cascade = CascadeType.ALL)
    private List<Order_details_entity> details;
    
    @ManyToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "customer_id",referencedColumnName = "id")
    private Customer_Entity customer;
    
    @OneToOne(mappedBy = "order",cascade = CascadeType.ALL)
    private Shipping_entity shipping;
    
    @ManyToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "payment_id",referencedColumnName = "id")
    private Payment_entity payment;
    private int order_total;
    private int order_status;
    private String order_date_time;

    public Order_entity() {
    }

    public Order_entity(int id, List<Order_details_entity> details, Customer_Entity customer, Shipping_entity shipping, Payment_entity payment, int order_total, int order_status, String order_date_time) {
        this.id = id;
        this.details = details;
        this.customer = customer;
        this.shipping = shipping;
        this.payment = payment;
        this.order_total = order_total;
        this.order_status = order_status;
        this.order_date_time = order_date_time;
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
     * @return the customer
     */
    public Customer_Entity getCustomer() {
        return customer;
    }

    /**
     * @param customer the customer to set
     */
    public void setCustomer_id(Customer_Entity customer) {
        this.customer = customer;
    }

    /**
     * @return the shipping
     */
    public Shipping_entity getShipping() {
        return shipping;
    }

    /**
     * @param shipping the shipping to set
     */
    public void setShipping_id(Shipping_entity shipping) {
        this.shipping = shipping;
    }

    /**
     * @return the payment
     */
    public Payment_entity getPayment() {
        return payment;
    }

    /**
     * @param payment the payment to set
     */
    public void setPayment(Payment_entity payment) {
        this.payment = payment;
    }

    /**
     * @return the order_total
     */
    public int getOrder_total() {
        return order_total;
    }

    /**
     * @param order_total the order_total to set
     */
    public void setOrder_total(int order_total) {
        this.order_total = order_total;
    }

    /**
     * @return the order_status
     */
    public int getOrder_status() {
        return order_status;
    }

    /**
     * @param order_status the order_status to set
     */
    public void setOrder_status(int order_status) {
        this.order_status = order_status;
    }

    /**
     * @return the order_date_time
     */
    public String getOrder_date_time() {
        return order_date_time;
    }

    /**
     * @param order_date_time the order_date_time to set
     */
    public void setOrder_date_time(String order_date_time) {
        this.order_date_time = order_date_time;
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
