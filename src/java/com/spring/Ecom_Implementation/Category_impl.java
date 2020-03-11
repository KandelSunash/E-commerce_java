/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.Ecom_Implementation;

import com.spring.Ecom_Entity.Category_entity;
import com.spring.Ecom_Entity.Manufacture_entity;
import com.spring.Ecom_Entity.Sub_category_entity;
import com.spring.Ecom_Interface.Category_interf;
import java.util.List;
import javax.transaction.Transactional;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 *
 * @author HP
 */
@Repository("catdao")
@Transactional
public class Category_impl implements Category_interf{
    boolean temp;
    @Autowired
    SessionFactory sessionFactory;
    //Add Category
    @Override
    public boolean addcategory(Category_entity cae) {
        temp=false;
        int i=(int)sessionFactory.getCurrentSession().save(cae);
        if(i>0)
        {
            temp=true;
        }
        return temp;
    }
    
    //View Category
    @Override
    public List<Category_entity> getallcategory() {
        List<Category_entity> li=sessionFactory.getCurrentSession().createQuery("from Category_entity").list();
        return li;
    }
    
    //Get Category ById
    @Override
    public Category_entity getbycategoryid(int id) {
        Category_entity cae=(Category_entity)sessionFactory.getCurrentSession().get(Category_entity.class, id);
        if(cae!=null)
        {
            return cae;
        }
        else
        {
            return null;
        }
    }

    @Override
    public boolean updatecategory(Category_entity cae) {
        sessionFactory.getCurrentSession().update(cae);
        return true;
    }

    @Override
    public Category_entity getbycategoryname(String category) {
        Category_entity cae=(Category_entity)sessionFactory.getCurrentSession().createQuery("from Category_entity where category_name=:x").setParameter("x", category).uniqueResult();
        return cae;
    }

    @Override
    public boolean addsubcategory(Sub_category_entity sc) {
        temp=false;
        int i=(int)sessionFactory.getCurrentSession().save(sc);
        if(i>0)
        {
            temp=true;
        }
        return temp;
    }

    @Override
    public List<Manufacture_entity> getallmanufactureitems() {
        List<Manufacture_entity> manufacture=sessionFactory.getCurrentSession().createQuery("from Manufacture_entity").list();
        return manufacture;
    }

    @Override
    public Manufacture_entity getbymanufactureid(int id) {
        Manufacture_entity manu=(Manufacture_entity)sessionFactory.getCurrentSession().get(Manufacture_entity.class, id);
        return manu;
    }
    
}
