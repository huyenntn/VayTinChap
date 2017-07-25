/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

import Database.database;
import Modal.htmldisplayObj;
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
public class htmldisplayDAO {
    public ArrayList<htmldisplayObj> getAllHtml(){
        Connection con = null;
        PreparedStatement st = null;
        ResultSet rs = null;
        ArrayList<htmldisplayObj> list = new ArrayList<htmldisplayObj>();
        try {
            con = database.getConnection();
            st = con.prepareStatement("SELECT * FROM htmldisplay");
            rs = st.executeQuery();
            while(rs.next()){
                htmldisplayObj htmlcode = new htmldisplayObj();
                htmlcode.setHtmlId(rs.getInt("htmlId"));
                htmlcode.setHtmlcode(rs.getString("htmlcode"));
                list.add(htmlcode);
            }
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(htmldisplayDAO.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(htmldisplayDAO.class.getName()).log(Level.SEVERE, null, ex);
        }finally{
            try { rs.close(); } catch (Exception e) { /* ignored */ }
            try { st.close(); } catch (Exception e) { /* ignored */ }
            try { con.close(); } catch (Exception e) { /* ignored */ }
        }
        return list;
    }
    
   public void addHtml(String htmlcode){
        Connection conn = null;
        PreparedStatement st = null;
        try {
            conn = database.getConnection();
            st = conn.prepareStatement("INSERT INTO htmldisplay (htmlcode) VALUE(?);");
            st.setString(1, htmlcode);
            st.executeUpdate();
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(htmldisplayDAO.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(htmldisplayDAO.class.getName()).log(Level.SEVERE, null, ex);
        }finally{
            try { st.close(); } catch (Exception e) { /* ignored */ }
            try { conn.close(); } catch (Exception e) { /* ignored */ }
        }
        
    }
   
   public void updateHtml(int htmlId, String htmlcode){
        Connection conn = null;
        PreparedStatement st =  null;
        try {
            conn = database.getConnection();
            st = conn.prepareStatement("UPDATE htmldisplay SET htmlcode = ? WHERE htmlId = ?");
            st.setString(1, htmlcode);
            st.setInt(2, htmlId);
            st.executeUpdate();
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(htmldisplayDAO.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(htmldisplayDAO.class.getName()).log(Level.SEVERE, null, ex);
        }finally{
            try { st.close(); } catch (Exception e) { /* ignored */ }
            try { conn.close(); } catch (Exception e) { /* ignored */ }
        }
   }
   
   public htmldisplayObj getHtmlById(int htmlId){
        Connection conn = null;
        PreparedStatement st = null;
        ResultSet rs = null;
        htmldisplayObj htmlcode = new htmldisplayObj();
        try {
            conn = database.getConnection();
            st = conn.prepareStatement("SELECT * FROM htmldisplay WHERE htmlId = ?");
            st.setInt(1, htmlId);
            rs = st.executeQuery();
            rs.next();
            htmlcode.setHtmlId(rs.getInt("htmlId"));
            htmlcode.setHtmlcode(rs.getString("htmlcode"));
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(htmldisplayDAO.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(htmldisplayDAO.class.getName()).log(Level.SEVERE, null, ex);
        }finally{
            try { rs.close(); } catch (Exception e) { /* ignored */ }
            try { st.close(); } catch (Exception e) { /* ignored */ }
            try { conn.close(); } catch (Exception e) { /* ignored */ }
        }
        return htmlcode;
   }
   
   public void deleteHtml(int htmlId){
       Connection conn = null;
       PreparedStatement st = null;
        try {
            conn = database.getConnection();
            st = conn.prepareStatement("DELETE FROM htmldisplay WHERE htmlId = ?");
            st.setInt(1, htmlId);
            st.executeUpdate();  
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(htmldisplayDAO.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(htmldisplayDAO.class.getName()).log(Level.SEVERE, null, ex);
        }finally{
            try { st.close(); } catch (Exception e) { /* ignored */ }
            try { conn.close(); } catch (Exception e) { /* ignored */ }
        }
   }
}
