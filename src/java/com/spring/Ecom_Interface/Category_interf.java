/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.Ecom_Interface;

import com.spring.Ecom_Entity.Category_entity;
import com.spring.Ecom_Entity.Manufacture_entity;
import com.spring.Ecom_Entity.Sub_category_entity;
import java.util.*;

/**
 *
 * @author HP
 */
public interface Category_interf  {
    //Add Category
    boolean addcategory(Category_entity cae);
    public List<Manufacture_entity> getallmanufactureitems();
    public Manufacture_entity getbymanufactureid(int id);
    boolean addsubcategory(Sub_category_entity sc);
    //View Category
    public List<Category_entity> getallcategory();
    public Category_entity getbycategoryid(int id);
    public Sub_category_entity getbysubcategoryid(int id);
    public Category_entity getbycategoryname(String category);
    public List<Sub_category_entity> getallsubcategory();
    //Update Category
    boolean updatecategory(Category_entity cae);
    boolean updatesubcategory(Sub_category_entity sub);
    //Delete Category
    boolean deletecategory(int id);
    boolean deletesubcategory(int id);
}
