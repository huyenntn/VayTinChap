/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

import Database.database;
import Modal.employeeObj;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Ngoc
 */
public class employeeDAO {
    public employeeObj getEmployeeIdByAcc(String acc){
        Connection conn = null;
        PreparedStatement st = null;
        ResultSet rs = null;
        employeeObj employee = new employeeObj();
        try {
            conn = database.getConnection();
            st = conn.prepareStatement("SELECT * FROM employee WHERE acc = ?");
            st.setString(1, acc);
            rs = st.executeQuery();
            rs.next();
            employee.setEmployeeId(rs.getInt("employeeId"));
            employee.setEmployeeName(rs.getString("employeeName"));
            employee.setAcc(rs.getString("acc"));
            employee.setPass(rs.getInt("pass"));
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(employeeDAO.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(employeeDAO.class.getName()).log(Level.SEVERE, null, ex);
        }finally{
            try { rs.close(); } catch (Exception e) { /* ignored */ }
            try { st.close(); } catch (Exception e) { /* ignored */ }
            try { conn.close(); } catch (Exception e) { /* ignored */ }
        }
        return employee;    
    }
    public ArrayList<employeeObj> getAllEmployee(){
        Connection con = null;
        PreparedStatement st = null;
        ResultSet rs = null;
        ArrayList<employeeObj> list = new ArrayList<employeeObj>();
        try {
            con = database.getConnection();
            st = con.prepareStatement("SELECT * FROM employee");
            rs = st.executeQuery();
            while(rs.next()){
                employeeObj employee = new employeeObj();
                employee.setEmployeeId(rs.getInt("employeeId"));
                employee.setEmployeeName(rs.getString("employeeName"));
                employee.setAcc(rs.getString("acc"));
                employee.setPass(rs.getInt("pass"));
                list.add(employee);
            }
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(employeeDAO.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(employeeDAO.class.getName()).log(Level.SEVERE, null, ex);
        }finally{
            try { rs.close(); } catch (Exception e) { /* ignored */ }
            try { st.close(); } catch (Exception e) { /* ignored */ }
            try { con.close(); } catch (Exception e) { /* ignored */ }
        }
        return list;
    }
    
   public void addEmployee(String employeeName, String acc, int pass) {
        Connection conn = null;
        PreparedStatement st = null;
        try {
            conn = database.getConnection();
            st = conn.prepareStatement("INSERT INTO employee (employeeName, acc, pass) VALUES(?,?,?);");
            st.setString(1, employeeName);
            st.setString(2, acc);
            st.setInt(3, pass);
            st.executeUpdate();
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(employeeDAO.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(employeeDAO.class.getName()).log(Level.SEVERE, null, ex);
        }finally{
            try { st.close(); } catch (Exception e) { /* ignored */ }
            try { conn.close(); } catch (Exception e) { /* ignored */ }
        }
        
    }
   
   public void updateEmployee(int employeeId, String employeeName, String acc, int pass){
        Connection conn = null;
        PreparedStatement st = null;
        try {
            conn = database.getConnection();
            st = conn.prepareStatement("UPDATE employee SET employeeName = ?, acc=?, pass=? WHERE employeeId = ?");
            st.executeQuery("SET NAMES 'UTF8'");
            st.executeQuery("SET CHARACTER SET 'UTF8'");
            st.setString(1, employeeName);
            st.setString(2, acc);
            st.setInt(3, pass);
            st.setInt(4, employeeId);
            st.executeUpdate();
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(employeeDAO.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(employeeDAO.class.getName()).log(Level.SEVERE, null, ex);
        }finally{
            try { st.close(); } catch (Exception e) { /* ignored */ }
            try { conn.close(); } catch (Exception e) { /* ignored */ }
        }
   }
   
   public employeeObj getEmployeeById(int employeeId){
        Connection conn = null;
        PreparedStatement st = null;
        ResultSet rs = null;
        employeeObj employee = new employeeObj();
        try {
            conn = database.getConnection();
            st = conn.prepareStatement("SELECT * FROM employee WHERE employeeId = ?");
            st.setInt(1, employeeId);
            rs = st.executeQuery();
            rs.next();
            employee.setEmployeeId(rs.getInt("employeeId"));
            employee.setEmployeeName(rs.getString("employeeName"));
            employee.setAcc(rs.getString("acc"));
            employee.setPass(rs.getInt("pass"));
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(employeeDAO.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(employeeDAO.class.getName()).log(Level.SEVERE, null, ex);
        }finally{
            try { rs.close(); } catch (Exception e) { /* ignored */ }
            try { st.close(); } catch (Exception e) { /* ignored */ }
            try { conn.close(); } catch (Exception e) { /* ignored */ }
        }
        return employee;
   }
   
   public void deleteEmployeeById(int employeeId){
       Connection conn = null;
       PreparedStatement st = null;
        try {
            conn = database.getConnection();
            st = conn.prepareStatement("DELETE FROM employee WHERE employeeId = ?");
            st.setInt(1, employeeId);
            st.executeUpdate();
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(employeeDAO.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(employeeDAO.class.getName()).log(Level.SEVERE, null, ex);
        }finally{
            try { st.close(); } catch (Exception e) { /* ignored */ }
            try { conn.close(); } catch (Exception e) { /* ignored */ }
        } 
   }
   
   public int checkLogin(String acc, int pass) throws ClassNotFoundException, SQLException{
       Connection conn = null;
       PreparedStatement st = null;
       ResultSet rs = null;
       int result = -1;
        try {
            conn = database.getConnection();
            st = conn.prepareStatement("SELECT * FROM employee WHERE acc = ? AND pass = ?"); 
            st.setString(1, acc);
            st.setInt(2, pass);
            rs = st.executeQuery();
            if(rs.next()){
                result = rs.getInt("employeeId");
            }
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(employeeDAO.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(employeeDAO.class.getName()).log(Level.SEVERE, null, ex);
        }finally{
            try { rs.close(); } catch (Exception e) { /* ignored */ }
            try { st.close(); } catch (Exception e) { /* ignored */ }
            try { conn.close(); } catch (Exception e) { /* ignored */ }
        }
        return result;
   }
}
