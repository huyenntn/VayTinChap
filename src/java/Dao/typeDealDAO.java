/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

import Database.database;
import Modal.typeDealObj;
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
public class typeDealDAO {
    public ArrayList<typeDealObj> getAllTypeDeal(){
        Connection con = null;
        PreparedStatement st = null;
        ResultSet rs = null;
        ArrayList<typeDealObj> list = new ArrayList<typeDealObj>();
        try {
            con = database.getConnection();
            st = con.prepareStatement("SELECT * FROM typedeal");
            rs = st.executeQuery();
            while(rs.next()){
                typeDealObj typeDeal = new typeDealObj();
                typeDeal.setTypedealId(rs.getInt("typedealId"));
                typeDeal.setTypedealName(rs.getString("typedealName"));
                list.add(typeDeal);
            }
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(typeDealDAO.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(typeDealDAO.class.getName()).log(Level.SEVERE, null, ex);
        }finally{
            try { rs.close(); } catch (Exception e) { /* ignored */ }
            try { st.close(); } catch (Exception e) { /* ignored */ }
            try { con.close(); } catch (Exception e) { /* ignored */ }
        }
        return list;
    }
    
    public typeDealObj getTypeDealById(int typedealId){
        Connection conn = null;
        PreparedStatement st = null;
        ResultSet rs = null;
        typeDealObj typedeal = new typeDealObj();
        try {
            conn = database.getConnection();
            st = conn.prepareStatement("SELECT * FROM typedeal WHERE typedealId = ?");
            st.setInt(1, typedealId);
            rs = st.executeQuery();
            rs.next();
            typedeal.setTypedealId(rs.getInt("typedealId"));
            typedeal.setTypedealName(rs.getString("typedealName"));
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(typeDealDAO.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(typeDealDAO.class.getName()).log(Level.SEVERE, null, ex);
        }finally{
            try { rs.close(); } catch (Exception e) { /* ignored */ }
            try { st.close(); } catch (Exception e) { /* ignored */ }
            try { conn.close(); } catch (Exception e) { /* ignored */ }
        }
        return typedeal;
   }

    
    public void addTypeDeal(String typedealName){
        Connection conn = null;
        PreparedStatement st = null;
        try {
            conn = database.getConnection();
            st = conn.prepareStatement("INSERT INTO typedeal (typedealName) VALUE(?);");
            st.setString(1, typedealName);
            st.executeUpdate();
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(typeDealDAO.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(typeDealDAO.class.getName()).log(Level.SEVERE, null, ex);
        }finally{
            try { st.close(); } catch (Exception e) { /* ignored */ }
            try { conn.close(); } catch (Exception e) { /* ignored */ }
        }
    }
    
    public void updateTypeDeal(int typedealId, String typedealName){
        Connection conn = null;
        PreparedStatement st = null;
        try {
            conn = database.getConnection();
            st = conn.prepareStatement("UPDATE typedeal SET typedealName = ? WHERE typedealId = ?");
            st.setString(1, typedealName);
            st.setInt(2, typedealId);
            st.executeUpdate();
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(typeDealDAO.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(typeDealDAO.class.getName()).log(Level.SEVERE, null, ex);
        }finally{
            try { st.close(); } catch (Exception e) { /* ignored */ }
            try { conn.close(); } catch (Exception e) { /* ignored */ }
        }
   }
    
   public void deleteTypeDealById(int typedealId){
       Connection conn = null;
       PreparedStatement st = null;
        try {
            conn = database.getConnection();
            st = conn.prepareStatement("DELETE FROM typedeal WHERE typedealId = ?");
            st.setInt(1, typedealId);
            st.executeUpdate();
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(typeDealDAO.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(typeDealDAO.class.getName()).log(Level.SEVERE, null, ex);
        }finally{
            try { st.close(); } catch (Exception e) { /* ignored */ }
            try { conn.close(); } catch (Exception e) { /* ignored */ }
        }
   }
}
