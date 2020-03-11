/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.Ecom_Implementation;

import com.spring.Ecom_Entity.Customer_Entity;
import com.spring.Ecom_Interface.User_interf;
import javax.transaction.Transactional;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Repository;

/**
 *
 * @author HP
 */
@Repository("usdao")
@Transactional
public class User_impl implements User_interf {

    boolean temp;

    @Autowired
    SessionFactory sessionFactory;

    @Autowired
    BCryptPasswordEncoder encode;

    @Override
    public boolean registeruser(Customer_Entity cuse) {
        temp = false;
        int i = (int) sessionFactory.getCurrentSession().save(cuse);
        if (i > 0) {
            temp = true;
        }
        return temp;
    }

    @Override
    public Customer_Entity getonline(String email, String password) {
        Customer_Entity cuse = (Customer_Entity) sessionFactory.getCurrentSession().createQuery("from Customer_Entity where email=:x")
                .setParameter("x", email).uniqueResult();
        if(cuse!=null && (encode.matches(password,cuse.getPassword()))){
            return cuse;
        }else{
            return null;
        }
    }

}
