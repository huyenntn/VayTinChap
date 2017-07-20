/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

import Database.database;
import Modal.loanpackagesObj;
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
public class loanpackagesDAO {
    public ArrayList<loanpackagesObj> getAllEmployee(){
        Connection con = null;
        PreparedStatement st = null;
        ResultSet rs = null;
        ArrayList<loanpackagesObj> list = new ArrayList<loanpackagesObj>();
        try {
            con = database.getConnection();
            st = con.prepareStatement("SELECT * FROM loanpackages");
            rs = st.executeQuery();
            while(rs.next()){
                loanpackagesObj loanpackage = new loanpackagesObj();
                loanpackage.setPackageId(rs.getInt("employeeId"));
                loanpackage.setPackageName(rs.getString("packageName"));
                loanpackage.setPackageDescribe(rs.getString("packageDescribe"));
                list.add(loanpackage);
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
    public void addLoanPackage(String packageName, String packageDescribe) throws ClassNotFoundException, SQLException{
        Connection conn = database.getConnection();
        PreparedStatement st = conn.prepareStatement("INSERT INTO loanpackages (packageName, packageDescribe) VALUES(?,?);");
        st.setString(1, packageName);
        st.setString(2, packageDescribe);
        st.executeUpdate();
    }
    public void updateEmployee(int packageId, String packageName, String packageDescribe) throws ClassNotFoundException, SQLException{
        Connection conn = database.getConnection();
        PreparedStatement st = conn.prepareStatement("UPDATE loanpackages SET packageName = ?, packageDescribe= ? WHERE packageId = ?");
        st.setString(1, packageName);
        st.setString(2, packageDescribe);
        st.setInt(3, packageId);
        st.executeUpdate();
   }
    public loanpackagesObj getEmployeeById(int packageId) throws ClassNotFoundException, SQLException{
        Connection conn = database.getConnection();
        PreparedStatement st = conn.prepareStatement("SELECT * FROM loanpackages WHERE packageId = ?");
        st.setInt(1, packageId);
        ResultSet rs = st.executeQuery();
        
        rs.next();
        loanpackagesObj loanpackage = new loanpackagesObj();
        loanpackage.setPackageId(rs.getInt("employeeId"));
        loanpackage.setPackageName(rs.getString("packageName"));
        loanpackage.setPackageDescribe(rs.getString("packageDescribe"));
        return loanpackage;
   }
    
    public void deleteEmployeeById(int employeeId) throws ClassNotFoundException, SQLException{
       Connection conn = database.getConnection();
        PreparedStatement st = conn.prepareStatement("DELETE FROM employee WHERE employeeId = ?");
        st.setInt(1, employeeId);
        st.executeUpdate();  
   }
}
