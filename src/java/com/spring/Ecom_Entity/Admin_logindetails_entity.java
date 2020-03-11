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
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;

/**
 *
 * @author HP
 */
@Entity
@Table(name="tbl_admin_logindetails")
public class Admin_logindetails_entity {
    @Id
    @GeneratedValue
    private int id;
    @ManyToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "login_username",referencedColumnName = "username")
    private Admin_login_entity adminlogin;
    private String login_date;
    private String logout_date;

    public Admin_logindetails_entity() {
        
    }

    public Admin_logindetails_entity(Admin_login_entity adminlogin, String login_date, String logout_date) {
        this.adminlogin = adminlogin;
        this.login_date = login_date;
        this.logout_date = logout_date;
    }

    public Admin_logindetails_entity(int id, Admin_login_entity adminlogin, String login_date, String logout_date) {
        this.id = id;
        this.adminlogin = adminlogin;
        this.login_date = login_date;
        this.logout_date = logout_date;
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
     * @return the login_date
     */
    public String getLogin_date() {
        return login_date;
    }

    /**
     * @param login_date the login_date to set
     */
    public void setLogin_date(String login_date) {
        this.login_date = login_date;
    }

    /**
     * @return the logout_date
     */
    public String getLogout_date() {
        return logout_date;
    }

    /**
     * @param logout_date the logout_date to set
     */
    public void setLogout_date(String logout_date) {
        this.logout_date = logout_date;
    }

    /**
     * @return the adminlogin
     */
    public Admin_login_entity getAdminlogin() {
        return adminlogin;
    }

    /**
     * @param adminlogin the adminlogin to set
     */
    public void setAdminlogin(Admin_login_entity adminlogin) {
        this.adminlogin = adminlogin;
    }

    
}
