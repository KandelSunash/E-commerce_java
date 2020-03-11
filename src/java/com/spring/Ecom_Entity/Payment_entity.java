/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.Ecom_Entity;

import java.util.List;
import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 *
 * @author HP
 */
@Entity
@Table(name="tbl_payment")
public class Payment_entity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    @OneToMany(mappedBy = "payment",cascade = CascadeType.ALL)
    private List<Order_entity> order;
    
    private String payment_method;
    private int payment_status;
    private String payment_date_time;

    public Payment_entity() {
    }

    public Payment_entity(int id, List<Order_entity> order, String payment_method, int payment_status, String payment_date_time) {
        this.id = id;
        this.order = order;
        this.payment_method = payment_method;
        this.payment_status = payment_status;
        this.payment_date_time = payment_date_time;
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
    public List<Order_entity> getOrder() {
        return order;
    }

    /**
     * @param order the order to set
     */
    public void setOrder(List<Order_entity> order) {
        this.order = order;
    }

    /**
     * @return the payment_method
     */
    public String getPayment_method() {
        return payment_method;
    }

    /**
     * @param payment_method the payment_method to set
     */
    public void setPayment_method(String payment_method) {
        this.payment_method = payment_method;
    }

    /**
     * @return the payment_status
     */
    public int getPayment_status() {
        return payment_status;
    }

    /**
     * @param payment_status the payment_status to set
     */
    public void setPayment_status(int payment_status) {
        this.payment_status = payment_status;
    }

    /**
     * @return the payment_date_time
     */
    public String getPayment_date_time() {
        return payment_date_time;
    }

    /**
     * @param payment_date_time the payment_date_time to set
     */
    public void setPayment_date_time(String payment_date_time) {
        this.payment_date_time = payment_date_time;
    }

}
