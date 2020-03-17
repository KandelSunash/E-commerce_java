/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.Ecom_Interface;

import com.spring.Ecom_Entity.Category_entity;
import com.spring.Ecom_Entity.Manufacture_entity;
import com.spring.Ecom_Entity.Order_details_entity;
import com.spring.Ecom_Entity.Product_entity;
import com.spring.Ecom_Entity.Shipping_entity;
import com.spring.Ecom_Entity.Sub_category_entity;
import java.util.List;

/**
 *
 * @author HP
 */
public interface Product_interf {
    public List<Category_entity> getallcategory();
    public List<Manufacture_entity> getallmanufacture();
    public List<Product_entity> getallproduct();
    public Category_entity getcategorybyid(int category);
    public boolean addproduct(Product_entity pe);
    public Sub_category_entity getsubcategorybyid(int sub);
    public Manufacture_entity getmanufacturebyid(int man);
    public Product_entity getproductbyid(int id);
    
    //Update Product
    public boolean updateproduct(Product_entity pe);
    
    //Delete Product
    public boolean delete(int id);
    
//    Userpage Product Data
    public List<Product_entity> getproductbycategoryid(int id);
    public List<Product_entity> getproductbysubcategoryid(int id);
    public boolean add_orderdetails(Order_details_entity ore);
    public boolean add_shipping(Shipping_entity she);
    
}
