/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.Ecom_Interface;

import com.spring.Ecom_Entity.Category_entity;
import com.spring.Ecom_Entity.Manufacture_entity;
import java.util.List;

/**
 *
 * @author HP
 */
public interface Manufacture_interf {
    //Add Manufacture
    boolean addmanufacture(Manufacture_entity mf);
    public List<Category_entity> getcategorylist();
    public Category_entity getbycategoryid(int id);
    
    //View Manufacture
    public List<Manufacture_entity> getallmanufacture();
    
    //Get Data By Manufacture Id
    public Manufacture_entity getbymanufactureid(int id);
    
    //Update Database
    boolean updatemanufacture(Manufacture_entity mf);
    
}
