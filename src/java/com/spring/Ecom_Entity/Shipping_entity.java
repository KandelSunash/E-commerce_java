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
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

/**
 *
 * @author HP
 */
@Entity
@Table(name="tbl_shipping")
public class Shipping_entity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "order_id",referencedColumnName = "id")
    private Order_entity order;
    
    private String shipping_first_name;
    private String shipping_last_name;
    private String shipping_address;
    private String shipping_phone;
    private String shipping_email;

    public Shipping_entity() {
    }

    public Shipping_entity(int id, Order_entity order, String shipping_first_name, String shipping_last_name, String shipping_address, String shipping_phone, String shipping_email) {
        this.id = id;
        this.order = order;
        this.shipping_first_name = shipping_first_name;
        this.shipping_last_name = shipping_last_name;
        this.shipping_address = shipping_address;
        this.shipping_phone = shipping_phone;
        this.shipping_email = shipping_email;
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
     * @return the shipping_first_name
     */
    public String getShipping_first_name() {
        return shipping_first_name;
    }

    /**
     * @param shipping_first_name the shipping_first_name to set
     */
    public void setShipping_first_name(String shipping_first_name) {
        this.shipping_first_name = shipping_first_name;
    }

    /**
     * @return the shipping_last_name
     */
    public String getShipping_last_name() {
        return shipping_last_name;
    }

    /**
     * @param shipping_last_name the shipping_last_name to set
     */
    public void setShipping_last_name(String shipping_last_name) {
        this.shipping_last_name = shipping_last_name;
    }

    /**
     * @return the shipping_address
     */
    public String getShipping_address() {
        return shipping_address;
    }

    /**
     * @param shipping_address the shipping_address to set
     */
    public void setShipping_address(String shipping_address) {
        this.shipping_address = shipping_address;
    }

    /**
     * @return the shipping_phone
     */
    public String getShipping_phone() {
        return shipping_phone;
    }

    /**
     * @param shipping_phone the shipping_phone to set
     */
    public void setShipping_phone(String shipping_phone) {
        this.shipping_phone = shipping_phone;
    }

    /**
     * @return the shipping_email
     */
    public String getShipping_email() {
        return shipping_email;
    }

    /**
     * @param shipping_email the shipping_email to set
     */
    public void setShipping_email(String shipping_email) {
        this.shipping_email = shipping_email;
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
}
