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
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.MapsId;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;

/**
 *
 * @author HP
 */
@Entity
@Table(name="tbl_admin_login", uniqueConstraints = {
    @UniqueConstraint(columnNames = "username")
})
public class Admin_login_entity implements Serializable {
    @Id
    private int id;
    @OneToOne(cascade = CascadeType.ALL)
    @PrimaryKeyJoinColumn
    @MapsId
    private  Admin_entity adminid;
    
    @OneToMany(mappedBy = "adminlogin",cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    private List<Admin_logindetails_entity> led;
    private String username;
    private String password;
    private int attempt;
    private int status;

    public Admin_login_entity() {
    }

    public Admin_login_entity(String username) {
        this.username = username;
    }

    public Admin_login_entity(int id, String username, int attempt) {
        this.id = id;
        this.username = username;
        this.attempt = attempt;
    }

    public Admin_login_entity(String username, int status) {
        this.username = username;
        this.status = status;
    }

    public Admin_login_entity(int id, Admin_entity adminid, String username, String password, int attempt, int status) {
        this.id = id;
        this.adminid = adminid;
        this.username = username;
        this.password = password;
        this.attempt = attempt;
        this.status = status;
    }

    public Admin_login_entity(int id, Admin_entity adminid, String username, List<Admin_logindetails_entity> led, String password, int attempt, int status) {
        this.id = id;
        this.adminid = adminid;
        this.username = username;
        this.led = led;
        this.password = password;
        this.attempt = attempt;
        this.status = status;
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
     * @return the adminid
     */
    public Admin_entity getAdminid() {
        return adminid;
    }

    /**
     * @param admin_id the adminid to set
     */
    public void setAdmin_id(Admin_entity adminid) {
        this.adminid = adminid;
    }

    /**
     * @return the username
     */
    public String getUsername() {
        return username;
    }

    /**
     * @param username the username to set
     */
    public void setUsername(String username) {
        this.username = username;
    }

    /**
     * @return the password
     */
    public String getPassword() {
        return password;
    }

    /**
     * @param password the password to set
     */
    public void setPassword(String password) {
        this.password = password;
    }

    /**
     * @return the attempt
     */
    public int getAttempt() {
        return attempt;
    }

    /**
     * @param attempt the attempt to set
     */
    public void setAttempt(int attempt) {
        this.attempt = attempt;
    }

    /**
     * @return the status
     */
    public int getStatus() {
        return status;
    }

    /**
     * @param status the status to set
     */
    public void setStatus(int status) {
        this.status = status;
    }

    /**
     * @return the led
     */
    public List<Admin_logindetails_entity> getLed() {
        return led;
    }

    /**
     * @param led the led to set
     */
    public void setLed(List<Admin_logindetails_entity> led) {
        this.led = led;
    }
    
  
}
