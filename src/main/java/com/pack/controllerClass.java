/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.pack;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Map;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author HP
 */

@Controller
public class controllerClass {
    
    private users user = new users();
    
    @RequestMapping("/ensura")
    public String loginpage(Map<String, Object> ob1) {
        ob1.put("user", user);
        return "loginpage";
    }
    @RequestMapping("/home")
    public String home() {
        return "home";
    }
    @RequestMapping("/apply_ensura")
    public String apply(Map<String, Object> ob1) {
        ob1.put("user", user);
        return "apply_ensura";
    }
    @RequestMapping("/claim_ensura")
    public String claim(Map<String, Object> ob1) {
        ob1.put("user", user);
        return "claim_ensura";
    }
    @RequestMapping(value="/signup",method=RequestMethod.POST)
    public String signup(@RequestParam("name") String name,@RequestParam("email") String email, @RequestParam("password") String password,
            Model model) {
        user.setName(name);
        user.setEmail(email);
        user.setPassword(password);
        try 
         {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/dbms_proj","root","Mohit@123");
             System.out.println("success");
             PreparedStatement stmt=con.prepareStatement("insert into person values(?,?,?,?)");
             stmt.setString(1, name);
             stmt.setString(2, email);
             stmt.setString(3, password);
             stmt.setInt(4, 0);
             stmt.executeUpdate();
         }
         catch(ClassNotFoundException | SQLException k)
         {
             System.out.println(k.getMessage());
         }
        return "home";
    }
    
    @RequestMapping(value="/login",method=RequestMethod.POST)
    public String login(@RequestParam("email") String email,@RequestParam("password") String password, @ModelAttribute("user") users users) {
        int flag=0;
        try {
            
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/dbms_proj","root","Mohit@123");
            String em = users.getEmail();
            String ps = users.getPassword();
            user.setEmail(users.getEmail());
            user.setPassword(users.getPassword());
            PreparedStatement stmt = con.prepareStatement("select * from person");
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                System.out.println(rs.getString(2)+" "+rs.getString(3));
                System.out.println(em+" "+ps);
                if(em.equals(rs.getString(2)) && ps.equals(rs.getString(3))){
                    flag=1;
                    break;
                }
            }
            
        } 
        catch (ClassNotFoundException | SQLException k) {
            System.out.println(k.getMessage());
        }
        if(flag==1){
            
            return "home";
        }
        else{
            return "loginpage";
        }
    }
    
    @RequestMapping(value="/application",method=RequestMethod.POST)
    public String applyEnsura(@RequestParam("res_address") String res_address,@RequestParam("car_model") String car_model,@RequestParam("licence_number") String licence_number,@RequestParam("purchase_year") Integer purchase_year) {
        user.setPurchase_year(purchase_year);
        user.setCar_model(car_model);
        user.setRes_address(res_address);
        user.setLicence_number(licence_number);
        try 
         {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/dbms_proj","root","Mohit@123");
             System.out.println("success");
             PreparedStatement stmt=con.prepareStatement("insert into car values(?,?,?,?)");
             stmt.setString(1, licence_number);
             stmt.setString(2, res_address);
             stmt.setString(3, car_model);
             stmt.setInt(4, purchase_year);
             stmt.executeUpdate();
         }
         catch(ClassNotFoundException | SQLException k)
         {
             System.out.println(k.getMessage());
         }
        return "home";
    }
    @RequestMapping(value="/claiming",method=RequestMethod.POST)
    public String claimEnsura(@RequestParam("accident_location") String accident_location,@RequestParam("date_of_accident") String date_of_accident,@RequestParam("damage_amount") Integer damage_amount,@RequestParam("accident_description") String accident_description, @ModelAttribute("user") users users) {
        user.setAccident_description(users.getAccident_description());
        user.setAccident_location(users.getAccident_location());
        user.setDate_of_accident(users.getDate_of_accident());
        user.setDamage_amount(users.getDamage_amount());
        try 
         {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/dbms_proj","root","Mohit@123");
             System.out.println("success");
             PreparedStatement stmt=con.prepareStatement("insert into accident values(?,?,?,?,?)");
             stmt.setInt(1, 0);
             stmt.setString(2, accident_location);
             stmt.setString(3, date_of_accident);
             stmt.setInt(4, damage_amount);
             stmt.setString(5,accident_description);
             stmt.executeUpdate();
         }
         catch(ClassNotFoundException | SQLException k)
         {
             System.out.println(k.getMessage());
         }
        return "home";
    }
    @RequestMapping("/profile")
    public String proFile(Model model) {
        try 
         {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/dbms_proj","root","Mohit@123");
             System.out.println("success");
             System.out.println(user.getEmail());
             PreparedStatement stmt1=con.prepareStatement("select * from person where email='"+user.getEmail()+"'");
//             stmt1.setString(1,user.getEmail());
             ResultSet rs1 = stmt1.executeQuery();
             Integer personid = 1;
             String personname="";
             while(rs1.next()) {
                System.out.println(rs1.getInt(4));
                personid = rs1.getInt(4);
                personname=rs1.getString(1);
             }
             PreparedStatement stmt2=con.prepareStatement("select * from accident where accident_location='"+user.getAccident_description()+"'");
//             stmt2.setString(1,user.getAccident_location());
//             stmt2.setString(2, user.getDate_of_accident());
             ResultSet rs2 = stmt2.executeQuery();
             Integer report_number=1;
             Integer claim_amount = user.getDamage_amount();
            while(rs2.next()){
                 System.out.println(rs2.getInt(1));
                report_number = rs2.getInt(1);
//                claim_amount = rs2.getInt("damage_amount");
            }
            model.addAttribute("personid",personid);
             model.addAttribute("licence_number",user.getLicence_number());
             model.addAttribute("report_number",report_number);
             model.addAttribute("damage_amount",user.getDamage_amount());
             model.addAttribute("email",user.getEmail());
             model.addAttribute("name",personname);
             model.addAttribute("address",user.getRes_address());
             model.addAttribute("car_model",user.getCar_model());
             model.addAttribute("purchase_year",user.getPurchase_year());
             model.addAttribute("accident_location",user.getAccident_location());
             model.addAttribute("date_of_accident",user.getDate_of_accident());
             model.addAttribute("accident_descp",user.getAccident_description());
             model.addAttribute("claim_amount",(int) (claim_amount-claim_amount*0.1));
            
            PreparedStatement stmt3=con.prepareStatement("insert into participated values(?,?,?)");
             System.out.println("inserted");
            stmt3.setInt(1, personid);
            stmt3.setInt(3, report_number);
            stmt3.setString(2, user.getLicence_number());
            stmt3.executeUpdate();
             
             
         }
         catch(ClassNotFoundException | SQLException k)
         {
             System.out.println(k.getMessage());
         }
        return "profile";
    }
    
    @RequestMapping("/deleteapli")
    public String deleteapli() {
        try {
            
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/dbms_proj","root","Mohit@123");
            PreparedStatement stmt = con.prepareStatement("delete from car where licence='"+user.getLicence_number()+"'");  
            stmt.executeUpdate();
        } 
        catch (ClassNotFoundException | SQLException k) {
            System.out.println(k.getMessage());
        }
        
        return "home";
    }
    
    @RequestMapping("/forgot-pass")
    public String forgot_pass(){
        return "password-change";
    }
    
    @RequestMapping(value="/passchange", method=RequestMethod.POST)
    public String passchange(@RequestParam("email") String email, @RequestParam("newpass") String password) {
        try {
            
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/dbms_proj","root","Mohit@123");
            PreparedStatement stmt = con.prepareStatement("update person set password='"+password+"' where email='"+email+"'");  
            stmt.executeUpdate();
        } 
        catch (ClassNotFoundException | SQLException k) {
            System.out.println(k.getMessage());
        }
        return "loginpage";
    }
}