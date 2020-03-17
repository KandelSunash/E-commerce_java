/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.Ecom_Implementation;

import com.spring.Ecom_Entity.Admin_entity;
import com.spring.Ecom_Entity.Admin_login_entity;
import com.spring.Ecom_Entity.Admin_logindetails_entity;
import com.spring.Ecom_Entity.Customer_Entity;
import com.spring.Ecom_Entity.Order_details_entity;
import com.spring.Ecom_Interface.Admin_interf;
import java.util.List;
import javax.transaction.Transactional;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Repository;

/**
 *
 * @author HP
 */
@Repository("dao")
@Transactional
public class Admin_impl implements Admin_interf {

    boolean temp;
    @Autowired
    SessionFactory sessionFactory;
    @Autowired
    BCryptPasswordEncoder encoder;

    //Admin Register
    @Override
    public boolean registeradmin(Admin_entity al) {
        temp = false;
        int i = (int) sessionFactory.getCurrentSession().save(al);
        if (i > 0) {
            temp = true;
        }
        return temp;
    }

    @Override
    public boolean registeradminlogin(Admin_login_entity ale) {
        temp = false;
        int i = (int) sessionFactory.getCurrentSession().save(ale);
        if (i > 0) {
            temp = true;
        }
        return temp;
    }

    //Admin Login And Login Details
    @Override
    public boolean checkusername(Admin_login_entity ld) {
        Admin_login_entity en = null;
        Query q = sessionFactory.getCurrentSession().createQuery("from Admin_login_entity where username=:x");
        q.setParameter("x", ld.getUsername());
        en = (Admin_login_entity) q.uniqueResult();
        if (en != null) {
            temp = true;
        }
        return temp;
    }

    @Override
    public boolean adminlogin(Admin_login_entity ld) {
        temp = false;
        Admin_login_entity en = null;
        Query q = sessionFactory.getCurrentSession().createQuery("from Admin_login_entity where username=:x and status=:y");
        q.setParameter("x", ld.getUsername());
        q.setParameter("y", 0);
        en = (Admin_login_entity) q.uniqueResult();
        if (en != null) {
            temp = true;
        }
        return temp;
    }

    @Override
    public Admin_entity adminloginstatus(Admin_login_entity ld) {
        int id;
        Admin_login_entity end = null;
        Query quu = sessionFactory.getCurrentSession().createQuery("from Admin_login_entity where username=:x");
        quu.setParameter("x", ld.getUsername());

        end = (Admin_login_entity) quu.uniqueResult();
        if (end != null && (encoder.matches(ld.getPassword(), end.getPassword()))) {

            id = end.getAdminid().getAdmin_id();
            Query qu = sessionFactory.getCurrentSession().createQuery("from Admin_entity where admin_id=:x");
            qu.setParameter("x", id);
            Admin_entity ad = (Admin_entity) qu.uniqueResult();

            return ad;
        } else {
            return null;
        }
    }

    @Override
    public boolean defaultstatus(Admin_login_entity ald) {
        temp = false;
        Query q = sessionFactory.getCurrentSession().createQuery("update Admin_login_entity set status=:x,attempt=:y where username=:z");
        q.setParameter("x", ald.getStatus());
        q.setParameter("y", ald.getAttempt());
        q.setParameter("z", ald.getUsername());
        int i = q.executeUpdate();
        if (i > 0) {
            int j = sessionFactory.getCurrentSession().createQuery("update Admin_entity set status=:x where admin_id=:y").setParameter("x", ald.getStatus()).setParameter("y", ald.getAdminid().getAdmin_id()).executeUpdate();
            if (j > 0) {
                temp = true;
            }
        }
        return temp;
    }

    @Override
    public int getattempt(Admin_login_entity ld) {
        Query q = sessionFactory.getCurrentSession().createQuery("from Admin_login_entity where username=:x");
        q.setParameter("x", ld.getUsername());
        Admin_login_entity led = (Admin_login_entity) q.uniqueResult();
        return led.getAttempt();
    }

    @Override
    public boolean logindateupdate(Admin_logindetails_entity ald) {
        temp = false;
        int i = (int) sessionFactory.getCurrentSession().save(ald);
        if (i > 0) {
            temp = true;
        }
        return temp;
    }

    @Override
    public boolean adminlogout(Admin_logindetails_entity ald) {
        temp = false;
        Query q = sessionFactory.getCurrentSession().createQuery("update Admin_logindetails_entity set logout_date=:x where login_date=:y and login_username=:z");
        q.setParameter("x", ald.getLogout_date());
        q.setParameter("y", ald.getLogin_date());
        q.setParameter("z", ald.getAdminlogin().getUsername());
        int i = q.executeUpdate();
        if (i > 0) {
            temp = true;
        }
        return temp;
    }

    @Override
    public boolean userpassattempt(Admin_login_entity ld) {
        temp = false;
        Query qu = sessionFactory.getCurrentSession().createQuery("from Admin_login_entity where username=:x");
        qu.setParameter("x", ld.getUsername());
        Admin_login_entity led = (Admin_login_entity) qu.uniqueResult();
        if (led != null) {
            Query q = sessionFactory.getCurrentSession().createQuery("update Admin_login_entity set attempt=:x where username=:y");
            q.setParameter("x", ld.getAttempt() + led.getAttempt());
            q.setParameter("y", ld.getUsername());
            int i = q.executeUpdate();
            if (i > 0) {
                temp = true;
            }

        }
        return temp;
    }

    @Override
    public boolean updatestatus(Admin_login_entity ld) {
        temp = false;
        Query q = sessionFactory.getCurrentSession().createQuery("update Admin_login_entity set status=:x where username=:y");
        q.setParameter("x", ld.getStatus());
        q.setParameter("y", ld.getUsername());
        int i = q.executeUpdate();
        if (i > 0) {
            Query qs = sessionFactory.getCurrentSession().createQuery("from Admin_login_entity where username=:x");
            qs.setParameter("x", ld.getUsername());
            Admin_login_entity led = (Admin_login_entity) qs.uniqueResult();

            Query qu = sessionFactory.getCurrentSession().createQuery("update Admin_entity set status=:x where admin_id=:y");
            qu.setParameter("x", ld.getStatus());
            qu.setParameter("y", led.getAdminid().getAdmin_id());
            int j = qu.executeUpdate();
            if (j > 0) {
                temp = true;
            }
        }
        return temp;
    }

    //View Admin
    @Override
    public List<Admin_login_entity> getAlladmindata() {
        List<Admin_login_entity> li = sessionFactory.getCurrentSession().createQuery("from Admin_login_entity").list();
        for (Admin_login_entity ad : li) {
            ad.setLed(sessionFactory.getCurrentSession().createQuery("from Admin_logindetails_entity where login_username=:x").setParameter("x", ad.getUsername()).list());
        }
        return li;
    }

    @Override
    public Admin_entity getbyadminid(int id) {
        Admin_entity ae = (Admin_entity) sessionFactory.getCurrentSession().get(Admin_entity.class, id);
        return ae;
    }

    @Override
    public Admin_login_entity getlogin(String username) {
        Admin_login_entity al = (Admin_login_entity) sessionFactory.getCurrentSession().createQuery("from Admin_login_entity where username=:x").setParameter("x", username).uniqueResult();
        return al;
    }

    @Override
    public Admin_login_entity getdatabyadminid(int id) {
        Admin_login_entity al = (Admin_login_entity) sessionFactory.getCurrentSession().get(Admin_login_entity.class, id);
        al.setLed(sessionFactory.getCurrentSession().createQuery("from Admin_logindetails_entity where login_username=:x").setParameter("x", al.getUsername()).list());
        return al;
    }

    @Override
    public boolean updateadmin(Admin_entity ad) {
        sessionFactory.getCurrentSession().update(ad);
        return true;
    }

    @Override
    public boolean deleteadmin(Admin_login_entity ad) {
        temp = false;
        sessionFactory.getCurrentSession().createQuery("delete from Admin_logindetails_entity where login_username=:x").setParameter("x", ad.getUsername()).executeUpdate();
            sessionFactory.getCurrentSession().delete(ad);
            temp = true;
        
        return temp;
    }

    @Override
    public List<Customer_Entity> getallcustomer() {
        List<Customer_Entity> clist = sessionFactory.getCurrentSession().createQuery("from Customer_Entity").list();
        return clist;
    }

    @Override
    public List<Order_details_entity> getorderdetails() {
        List<Order_details_entity> odlist = sessionFactory.getCurrentSession().createQuery("from Order_details_entity").list();
        return odlist;
    }

    @Override
    public boolean blockadmin(Admin_entity ld) {
        temp = false;
        Query q = sessionFactory.getCurrentSession().createQuery("update Admin_entity set status=:x where id=:y");
        q.setParameter("x", ld.getStatus());
        q.setParameter("y", ld.getAdmin_id());
        int i = q.executeUpdate();
        if (i > 0) {
            Query qq = sessionFactory.getCurrentSession().createQuery("update Admin_login_entity set status=:x where adminid_admin_id=:y");
            qq.setParameter("x", ld.getStatus());
            qq.setParameter("y", ld.getAdmin_id());
            int j = (int) qq.executeUpdate();
            if (j > 0) {
                temp = true;
            }
        }
        return temp;
    }

    @Override
    public boolean unblockadmin(Admin_entity ld) {
        temp = false;
        Query q = sessionFactory.getCurrentSession().createQuery("update Admin_entity set status=:x where id=:y");
        q.setParameter("x", ld.getStatus());
        q.setParameter("y", ld.getAdmin_id());
        int i = q.executeUpdate();
        if (i > 0) {
            Query qq = sessionFactory.getCurrentSession().createQuery("update Admin_login_entity set status=:x where adminid_admin_id=:y");
            qq.setParameter("x", ld.getStatus());
            qq.setParameter("y", ld.getAdmin_id());
            int j = (int) qq.executeUpdate();
            if (j > 0) {
                temp = true;
            }
        }
        return temp;
    }

    @Override
    public Admin_entity checkemail(String email) {
        Admin_entity ale = (Admin_entity) sessionFactory.getCurrentSession().createQuery("from Admin_entity where email=:x").setParameter("x", email).uniqueResult();
        return ale;
    }

    @Override
    public boolean verifydelivery(int id, int status) {
        temp = false;
        int i = sessionFactory.getCurrentSession().createQuery("update Order_entity set order_status=:x where id=:y").setParameter("x", status).setParameter("y", id).executeUpdate();
        if (i > 0) {
            temp = true;
        }
        return temp;
    }

    @Override
    public boolean chagepassword(String password, int id) {
        temp=false;
        int i=sessionFactory.getCurrentSession().createQuery("update Admin_login_entity set password=:x where adminid_admin_id=:y").setParameter("x", password).setParameter("y", id).executeUpdate();
        if (i > 0) {
            temp = true;
        }
        return temp;
    }
}
