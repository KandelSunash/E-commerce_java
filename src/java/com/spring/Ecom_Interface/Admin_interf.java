/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.Ecom_Interface;

import com.spring.Ecom_Entity.Admin_entity;
import com.spring.Ecom_Entity.Admin_login_entity;
import com.spring.Ecom_Entity.Admin_logindetails_entity;
import com.spring.Ecom_Entity.Customer_Entity;
import com.spring.Ecom_Entity.Order_details_entity;
import java.util.List;

/**
 *
 * @author HP
 */
public interface Admin_interf {
    //Admin Register
    boolean registeradmin(Admin_entity al);
    boolean registeradminlogin(Admin_login_entity ale);
    //Admin Login
    boolean checkusername(Admin_login_entity ld);
    boolean adminlogin(Admin_login_entity ld);
    public Admin_entity adminloginstatus(Admin_login_entity ld);
    boolean defaultstatus(Admin_login_entity ald);
    public int getattempt(Admin_login_entity ld);
    boolean logindateupdate(Admin_logindetails_entity ald);
    boolean adminlogout(Admin_logindetails_entity ald);
    boolean userpassattempt(Admin_login_entity ld);
    boolean updatestatus(Admin_login_entity ld);
    public Admin_login_entity getlogin(String username);
    
    //view Admin
    public List<Admin_login_entity> getAlladmindata();
    //Admin More Infos..
    public Admin_login_entity getdatabyadminid(int id);
    
//    Update Admin
    public Admin_entity getbyadminid(int id);
    boolean updateadmin(Admin_entity ad);
//    
//    public adminlogin_entity showalldata(admin_entity ad);
//    public List<adminlogin_details> showlogindetails(adminlogin_details ad);
        //Delete Admin
    boolean deleteadmin(Admin_login_entity ad);
//        //block unblock admin
    boolean blockadmin(Admin_entity ld);
    boolean unblockadmin(Admin_entity ld);
//    //  Admin Profile
//    public admin_entity getprofiledata(String admin_id);
    
    public List<Customer_Entity> getallcustomer();
    public List<Order_details_entity> getorderdetails();
}
