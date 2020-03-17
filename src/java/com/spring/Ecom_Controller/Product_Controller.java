/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.Ecom_Controller;

import com.spring.Ecom_Entity.Category_entity;
import com.spring.Ecom_Entity.Customer_Entity;
import com.spring.Ecom_Entity.Manufacture_entity;
import com.spring.Ecom_Entity.Order_details_entity;
import com.spring.Ecom_Entity.Order_entity;
import com.spring.Ecom_Entity.Payment_entity;
import com.spring.Ecom_Entity.Product_entity;
import com.spring.Ecom_Entity.Shipping_entity;
import com.spring.Ecom_Entity.Sub_category_entity;
import com.spring.Ecom_Interface.Product_interf;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;
import org.apache.commons.io.FilenameUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

/**
 *
 * @author HP
 */
@Controller
@RequestMapping("/product")
public class Product_Controller {

    @Autowired
    Product_interf prdao;

    @RequestMapping("/")
    public String product(HttpSession ses, Model md) {
        if (ses.getAttribute("username") != null) {
            md.addAttribute("list", prdao.getallcategory());
            md.addAttribute("mlist", prdao.getallmanufacture());

            return "addproduct";
        } else {
            return "redirect:/cpanel/";
        }
    }

    @RequestMapping("/_addproduct")
    public String addproduct(HttpSession ses,
            @RequestParam("file") MultipartFile file,
            @ModelAttribute Product_entity pe, Model md,
            @RequestParam("catey") int cateid,
            @RequestParam("sub_catey") int subcateid,
            @RequestParam("manufact") int manufactid) {

        if (ses.getAttribute("username") != null) {
            ServletContext context = ses.getServletContext();
            String path = context.getRealPath("") + "resources/images/product";
            String ext = FilenameUtils.getExtension(file.getOriginalFilename());
            String filename = UUID.randomUUID().toString();
            File f1 = new File(path + "/" + filename + "." + ext);
            try {
                file.transferTo(f1);
            } catch (Exception e) {
                e.printStackTrace();
            }
            pe.setProduct_image(filename + "." + ext);
            Manufacture_entity me = prdao.getmanufacturebyid(manufactid);
            Sub_category_entity sce = prdao.getsubcategorybyid(subcateid);
            Category_entity ce = prdao.getcategorybyid(cateid);
            double price=(pe.getDiscount()/100)*(pe.getProduct_price());
            pe.setDiscount_price(price);
            pe.setCategory(ce);
            pe.setSub_category(sce);
            pe.setManufacture(me);
            pe.setFlag(false);

            if (prdao.addproduct(pe)) {
                md.addAttribute("msg", "Product Added");
            } else {
                md.addAttribute("msg", "Fail to Add Product");
            }
            return "redirect:/product/";
        } else {
            return "redirect:/cpanel/";
        }
    }

    @RequestMapping("/viewproduct")
    public String getallproduct(Model md, HttpSession ses) {
        if (ses.getAttribute("username") != null) {
            md.addAttribute("plist", prdao.getallproduct());
            return "viewproduct";
        } else {
            return "redirect:/cpanel/";
        }
    }

    @RequestMapping("/updateproduct")
    public String updateproduct(HttpSession ses, @RequestParam("id") int id, Model md) {
        if (ses.getAttribute("username") != null) {
            md.addAttribute("product", prdao.getproductbyid(id));
            md.addAttribute("list", prdao.getallcategory());
            md.addAttribute("mlist", prdao.getallmanufacture());
            return "updateproduct";
        } else {
            return "redirect:/cpanel/";
        }
    }

    @RequestMapping("/_updateproduct")
    public String _updateproduct(Model md,
            HttpSession ses,
            @RequestParam("file") MultipartFile file,
            @ModelAttribute Product_entity pe,
            @RequestParam("catey") int cateid,
            @RequestParam("sub_catey") int subcateid,
            @RequestParam("manufact") int manufactid) {
        if (ses.getAttribute("username") != null) {
            Product_entity pr = prdao.getproductbyid(pe.getId());

            ServletContext context = ses.getServletContext();
            String path = context.getRealPath("") + "resources/images/product";
            String ext = FilenameUtils.getExtension(file.getOriginalFilename());
            String filename = UUID.randomUUID().toString();
            File f1 = new File(path + "/" + filename + "." + ext);
            try {
                file.transferTo(f1);
            } catch (Exception e) {
                e.printStackTrace();
            }
            if (!file.isEmpty() && file.getSize() != 0) {
                pe.setProduct_image(filename + "." + ext);
                ses.setAttribute("image", filename + "." + ext);
            } else {
                pe.setProduct_image(pr.getProduct_image());
            }
            Manufacture_entity me = prdao.getmanufacturebyid(manufactid);
            Sub_category_entity sce = prdao.getsubcategorybyid(subcateid);
            Category_entity ce = prdao.getcategorybyid(cateid);
            double discount=pe.getDiscount();
            double price=(discount/100)*(pe.getProduct_price());
            System.out.println(price);
            pe.setDiscount_price(price);
            pe.setCategory(ce);
            pe.setSub_category(sce);
            pe.setManufacture(me);
            prdao.updateproduct(pe);
            return "redirect:/product/viewproduct";
        } else {
            return "redirect:/cpanel/";
        }
    }

    @RequestMapping("/deleteproduct")
    public String deleteproduct(HttpSession ses, Model md, @RequestParam("id") int id) {
        if (ses.getAttribute("username") != null) {
            if (prdao.delete(id)) {
                md.addAttribute("msg", "Data Deleted");
            } else {
                md.addAttribute("msg", "Fail to delete data");
            }
            return "redirect:/product/viewproduct";
        } else {
            return "redirect:/cpanel/";
        }
    }

    @RequestMapping("/getproductdata")
    public String getProductData(@RequestParam("key") int key,
            @RequestParam("name") String name,
            Model md) {
        md.addAttribute("prlist", prdao.getproductbycategoryid(key));
        md.addAttribute("name", name);
        md.addAttribute("list", prdao.getallcategory());
        return "userpage/viewproducts";
    }

    @RequestMapping("/getproductdata2")
    public String getProductData2(@RequestParam("key") int key,
            @RequestParam("name") String name,
            Model md) {
        md.addAttribute("prlist", prdao.getproductbysubcategoryid(key));
        md.addAttribute("name", name);
        md.addAttribute("list", prdao.getallcategory());
        return "userpage/viewproducts";
    }

    @RequestMapping("/productdetails")
    public String getProductDetails(@RequestParam("id") int id, Model md) {
        md.addAttribute("product", prdao.getproductbyid(id));
        return "userpage/productdetails";
    }

    @RequestMapping("/buynow")
    public String buyproducts(HttpSession ses, @RequestParam("id") int id, Model md) {

        if (ses.getAttribute("userlogin") != null) {
            ses.setAttribute("product_data", prdao.getproductbyid(id));
            Customer_Entity es = (Customer_Entity) ses.getAttribute("userlogin");
            md.addAttribute("user", es);
            return "/userpage/buynow";
        } else {
            ses.setAttribute("product_id", id);
            md.addAttribute("buy", true);
            return "/userpage/userlogin";
        }
    }

    @RequestMapping("/shippingdetails")
    public String shippingdetails(@RequestParam("name") String name, @ModelAttribute Shipping_entity she,
            @RequestParam("payment_type") String payment,
            Model md, HttpSession ses) {
        if (payment.equalsIgnoreCase("Cash On Delivery")) {
            String nam[] = name.split(" ");
            String na = "";
            she.setShipping_first_name(nam[0]);
            for (int i = 1; i < nam.length; i++) {
                na = na + nam[i] + " ";
            }
            she.setShipping_last_name(na);
            Customer_Entity es = (Customer_Entity) ses.getAttribute("userlogin");
            Product_entity pe = (Product_entity) ses.getAttribute("product_data");
            java.util.Date date = new java.sql.Date(new java.util.Date().getTime());
            List<Shipping_entity> sli = new ArrayList<>();
            List<Order_entity> oli = new ArrayList<>();
            Payment_entity pem = new Payment_entity(0, null, payment, 1, date.toString());
            Order_entity ored = new Order_entity(0, null, es, null, pem, 1, 1, date.toString());
            Order_details_entity ord = new Order_details_entity(0, ored, pe, pe.getProduct_price(), 1);
            if (prdao.add_orderdetails(ord)) {
                she.setOrder(ored);
                if (prdao.add_shipping(she)) {
                    md.addAttribute("msg", "Shipping poni ayo");
                }
            }
            return "redirect:/";
        } else {
            return "paymentmethod";
        }
    }

}
