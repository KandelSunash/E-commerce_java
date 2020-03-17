/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.Ecom_Implementation;

import com.spring.Ecom_Entity.Category_entity;
import com.spring.Ecom_Entity.Manufacture_entity;
import com.spring.Ecom_Entity.Order_details_entity;
import com.spring.Ecom_Entity.Product_entity;
import com.spring.Ecom_Entity.Shipping_entity;
import com.spring.Ecom_Entity.Sub_category_entity;
import com.spring.Ecom_Interface.Product_interf;
import java.util.List;
import javax.transaction.Transactional;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 *
 * @author HP
 */
@Repository("prdao")
@Transactional
public class Product_impl implements Product_interf {

    boolean temp;
    @Autowired
    SessionFactory sessionFactory;

    @Override
    public List<Category_entity> getallcategory() {
        List<Category_entity> li = sessionFactory.getCurrentSession().createQuery("from Category_entity").list();
//        for (Category_entity cate : li) {
//            cate.setManufacture(sessionFactory.getCurrentSession().createQuery("from Manufacture_entity me where=:x").setParameter("x", cate.getId()).list());
//            cate.setSub_category(sessionFactory.getCurrentSession().createQuery("from Sub_category_entity where category_id=:x").setParameter("x", cate.getId()).list());
//        }
        return li;
    }

    @Override
    public Category_entity getcategorybyid(int category) {
        Category_entity li = (Category_entity) sessionFactory.getCurrentSession().get(Category_entity.class, category);
        return li;
    }

    @Override
    public boolean addproduct(Product_entity pe) {
        sessionFactory.getCurrentSession().saveOrUpdate(pe);
        return true;
    }

    @Override
    public Sub_category_entity getsubcategorybyid(int sub) {
        Sub_category_entity li = (Sub_category_entity) sessionFactory.getCurrentSession().get(Sub_category_entity.class, sub);
        return li;
    }

    @Override
    public Manufacture_entity getmanufacturebyid(int man) {
        Manufacture_entity li = (Manufacture_entity) sessionFactory.getCurrentSession().get(Manufacture_entity.class, man);
        return li;
    }

    @Override
    public List<Product_entity> getproductbycategoryid(int id) {
        List<Product_entity> lis = sessionFactory.getCurrentSession().createQuery("from Product_entity where category_id=:x").setParameter("x", id).list();
        return lis;
    }

    @Override
    public List<Manufacture_entity> getallmanufacture() {
        List<Manufacture_entity> li = sessionFactory.getCurrentSession().createQuery("from Manufacture_entity").list();
        return li;
    }

    @Override
    public Product_entity getproductbyid(int id) {
        Product_entity pr = (Product_entity) sessionFactory.getCurrentSession().get(Product_entity.class, id);
        pr.getCategory().getId();
        return pr;
    }

    @Override
    public boolean add_orderdetails(Order_details_entity ore) {
        temp = false;
        int i = (int) sessionFactory.getCurrentSession().save(ore);
        if (i > 0) {
            temp = true;
        }
        return temp;
    }

    @Override
    public boolean add_shipping(Shipping_entity she) {
        temp = false;
        int i = (int) sessionFactory.getCurrentSession().save(she);
        if (i > 0) {
            temp = true;
        }
        return temp;
    }

    @Override
    public List<Product_entity> getallproduct() {
        List<Product_entity> li = sessionFactory.getCurrentSession().createQuery("from Product_entity where flag=:x").setParameter("x", false).list();
        return li;
    }

    @Override
    public List<Product_entity> getproductbysubcategoryid(int id) {
        List<Product_entity> lis = sessionFactory.getCurrentSession().createQuery("from Product_entity where sub_category_id=:x").setParameter("x", id).list();
        return lis;
    }

    @Override
    public boolean updateproduct(Product_entity pe) {
        sessionFactory.getCurrentSession().update(pe);
        return true;
    }

    @Override
    public boolean delete(int id) {
        temp = false;
        int i = sessionFactory.getCurrentSession().createQuery("update Product_entity set flag=:x where id=:y").setParameter("x", true).setParameter("y", id).executeUpdate();
        if (i > 0) {
            temp = true;
        }
        return temp;
    }

}
