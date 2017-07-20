/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

import Database.database;
import Modal.customerObj;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Ngoc
 */
public class customerDAO {
        public int addCustom(String customerName, String email, int phone, String address, int employeesupport, String company, String career, int companyNum, int typedealId, int employeeId) throws ClassNotFoundException, SQLException{
        Connection conn = database.getConnection();
        PreparedStatement st = conn.prepareStatement("INSERT INTO customer(customerName,email,phone,address,employeesupport,company,career,companyNum,typedealId,employeeId) VALUES (?,?,?,?,?,?,?,?,?,?)", Statement.RETURN_GENERATED_KEYS);
        st.setString(1, customerName);
        st.setString(2, email);
        st.setInt(3, phone);
        st.setString(4, address);
        st.setInt(5, employeesupport);
        st.setString(6, company);
        st.setString(7, career);
        st.setInt(8, companyNum);
        st.setInt(9, typedealId);
        st.setInt(10, employeeId);
        st.executeUpdate();
        ResultSet rs = st.getGeneratedKeys();
        int customID = 0;
        if(rs.next()){
            customID = rs.getInt(1);
        }else{
            customID = -1;
        }
        return customID;
    }
public ArrayList<customerObj> getAllCustomer(){
        Connection con = null;
        PreparedStatement st = null;
        ResultSet rs = null;
        ArrayList<customerObj> list = new ArrayList<customerObj>();
        try {
            con = database.getConnection();
            st = con.prepareStatement("SELECT * FROM customer");
            rs = st.executeQuery();
            while(rs.next()){
                customerObj customer = new customerObj();
                customer.setCustomerId(rs.getInt("customerId"));
                customer.setCustomerName(rs.getString("customerName"));
                customer.setEmail(rs.getString("email"));
                customer.setPhone(rs.getInt("phone"));
                customer.setAddress(rs.getString("address"));
                customer.setEmployeesupport(rs.getInt("employeesupport"));
                customer.setCompany(rs.getString("company"));
                customer.setCareer(rs.getString("career"));
                customer.setCompanyNum(rs.getInt("companyNum"));
                customer.setTypedealId(rs.getInt("typedealId"));
                customer.setEmployeeId(rs.getInt("employeeId"));
                list.add(customer);
            }
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(customerDAO.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(customerDAO.class.getName()).log(Level.SEVERE, null, ex);
        }finally{
            try { rs.close(); } catch (Exception e) { /* ignored */ }
            try { st.close(); } catch (Exception e) { /* ignored */ }
            try { con.close(); } catch (Exception e) { /* ignored */ }
        }
        return list;
    }
    
    public ArrayList<customerObj> getCustomerByEmployeeId(int employeeId){
        Connection con = null;
        PreparedStatement st = null;
        ResultSet rs = null;
        ArrayList<customerObj> list = new ArrayList<customerObj>();
        try {
            con = database.getConnection();
            st = con.prepareStatement("SELECT * FROM customer WHERE employeeId = ?");
            st.setInt(1, employeeId);
            rs = st.executeQuery();
            while(rs.next()){
                customerObj customer = new customerObj();
                customer.setCustomerId(rs.getInt("customerId"));
                customer.setCustomerName(rs.getString("customerName"));
                customer.setEmail(rs.getString("email"));
                customer.setPhone(rs.getInt("phone"));
                customer.setAddress(rs.getString("address"));
                customer.setEmployeesupport(rs.getInt("employeesupport"));
                customer.setCompany(rs.getString("company"));
                customer.setCareer(rs.getString("career"));
                customer.setCompanyNum(rs.getInt("companyNum"));
                customer.setTypedealId(rs.getInt("typedealId"));
                customer.setEmployeeId(rs.getInt("employeeId"));
                list.add(customer);
            }
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(customerDAO.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(customerDAO.class.getName()).log(Level.SEVERE, null, ex);
        }finally{
            try { rs.close(); } catch (Exception e) { /* ignored */ }
            try { st.close(); } catch (Exception e) { /* ignored */ }
            try { con.close(); } catch (Exception e) { /* ignored */ }
        }
        return list;
    }
    
    public ArrayList<customerObj> getCustomerByTypeDeal(int typedealId){
        Connection con = null;
        PreparedStatement st = null;
        ResultSet rs = null;
        ArrayList<customerObj> list = new ArrayList<customerObj>();
        try {
            con = database.getConnection();
            st = con.prepareStatement("SELECT * FROM customer WHERE typedealId = ?");
            st.setInt(1, typedealId);
            rs = st.executeQuery();
            while(rs.next()){
                customerObj customer = new customerObj();
                customer.setCustomerId(rs.getInt("customerId"));
                customer.setCustomerName(rs.getString("customerName"));
                customer.setEmail(rs.getString("email"));
                customer.setPhone(rs.getInt("phone"));
                customer.setAddress(rs.getString("address"));
                customer.setEmployeesupport(rs.getInt("employeesupport"));
                customer.setCompany(rs.getString("company"));
                customer.setCareer(rs.getString("career"));
                customer.setCompanyNum(rs.getInt("companyNum"));
                customer.setTypedealId(rs.getInt("typedealId"));
                customer.setEmployeeId(rs.getInt("employeeId"));
                list.add(customer);
            }
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(customerDAO.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(customerDAO.class.getName()).log(Level.SEVERE, null, ex);
        }finally{
            try { rs.close(); } catch (Exception e) { /* ignored */ }
            try { st.close(); } catch (Exception e) { /* ignored */ }
            try { con.close(); } catch (Exception e) { /* ignored */ }
        }
        return list;
    }
    
        public ArrayList<customerObj> getCustomerByTypeDealAndEmployee(int employeeId, int typedealId){
        Connection con = null;
        PreparedStatement st = null;
        ResultSet rs = null;
        ArrayList<customerObj> list = new ArrayList<customerObj>();
        try {
            con = database.getConnection();
            st = con.prepareStatement("SELECT * FROM customer WHERE typedealId = ? AND employeeId = ?");
            st.setInt(1, typedealId);
            st.setInt(2, employeeId);
            rs = st.executeQuery();
            while(rs.next()){
                customerObj customer = new customerObj();
                customer.setCustomerId(rs.getInt("customerId"));
                customer.setCustomerName(rs.getString("customerName"));
                customer.setEmail(rs.getString("email"));
                customer.setPhone(rs.getInt("phone"));
                customer.setAddress(rs.getString("address"));
                customer.setEmployeesupport(rs.getInt("employeesupport"));
                customer.setCompany(rs.getString("company"));
                customer.setCareer(rs.getString("career"));
                customer.setCompanyNum(rs.getInt("companyNum"));
                customer.setTypedealId(rs.getInt("typedealId"));
                customer.setEmployeeId(rs.getInt("employeeId"));
                list.add(customer);
            }
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(customerDAO.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(customerDAO.class.getName()).log(Level.SEVERE, null, ex);
        }finally{
            try { rs.close(); } catch (Exception e) { /* ignored */ }
            try { st.close(); } catch (Exception e) { /* ignored */ }
            try { con.close(); } catch (Exception e) { /* ignored */ }
        }
        return list;
    }
    
    public int updateCustomerByEmployee(int employeeId ,int customerId ){
        Connection conn = null;
        PreparedStatement st = null;
        int result = -1;
        try {
            conn = database.getConnection();
            st = conn.prepareStatement("UPDATE customer SET employeeId = ? WHERE customerId = ?");
            st.setInt(1, employeeId);
            st.setInt(2, customerId);
            result = st.executeUpdate();
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(customerDAO.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(customerDAO.class.getName()).log(Level.SEVERE, null, ex);
        }finally{
            try { st.close(); } catch (Exception e) { /* ignored */ }
            try { conn.close(); } catch (Exception e) { /* ignored */ }
        }
        return result;
   }
}
