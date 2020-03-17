/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.Ecom_Implementation;

import com.spring.Ecom_Entity.Category_entity;
import com.spring.Ecom_Entity.Manufacture_entity;
import com.spring.Ecom_Interface.Manufacture_interf;
import java.util.List;
import javax.transaction.Transactional;
import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 *
 * @author HP
 */
@Repository("mfdao")
@Transactional
public class Manufacture_impl implements Manufacture_interf{
    boolean temp;
    @Autowired
    SessionFactory sessionFactory;
    
    @Override
    public boolean addmanufacture(Manufacture_entity mf) {
        temp=false;
        int i=(int)sessionFactory.getCurrentSession().save(mf);
        if(i>0)
        {
            temp=true;
        }
        return temp;
    }

    @Override
    public List<Manufacture_entity> getallmanufacture() {
        List<Manufacture_entity> li=sessionFactory.getCurrentSession().createQuery("from Manufacture_entity where flag=:x").setParameter("x", false).list();
        return li;
    }

    @Override
    public Manufacture_entity getbymanufactureid(int id) {
        Manufacture_entity mf=(Manufacture_entity)sessionFactory.getCurrentSession().get(Manufacture_entity.class, id);
        return mf;
    }

    @Override
    public boolean updatemanufacture(Manufacture_entity mf) {
        sessionFactory.getCurrentSession().saveOrUpdate(mf);
        return true;
    }

    @Override
    public List<Category_entity> getcategorylist() {
        Query qu=sessionFactory.getCurrentSession().createQuery("from Category_entity where flag=:x").setParameter("x", false);
        qu.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY);
        List<Category_entity> li=qu.list();
        return li;
    }

    @Override
    public Category_entity getbycategoryid(int id) {
        Category_entity ca=(Category_entity)sessionFactory.getCurrentSession().get(Category_entity.class, id);
        return ca;
    }

    @Override
    public boolean deletemanufacture(int id) {
        temp = false;
        int i = sessionFactory.getCurrentSession().createQuery("update Manufacture_entity set flag=:x where id=:y").setParameter("x", true)
                .setParameter("y", id).executeUpdate();
        if (i > 0) {
            temp = true;
        }
        return temp;
    }
    
}
