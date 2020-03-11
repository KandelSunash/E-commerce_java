/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.Ecom_Interface;

import com.spring.Ecom_Entity.Customer_Entity;

/**
 *
 * @author HP
 */
public interface User_interf {
    public boolean registeruser(Customer_Entity cuse);
    public Customer_Entity getonline(String email,String password);
}
