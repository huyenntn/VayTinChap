/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

import Database.database;
import Modal.hotlineObj;
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
public class hotlineDAO {
    public ArrayList<hotlineObj> getAllHotline(){
        Connection con = null;
        PreparedStatement st = null;
        ResultSet rs = null;
        ArrayList<hotlineObj> list = new ArrayList<hotlineObj>();
        try {
            con = database.getConnection();
            st = con.prepareStatement("SELECT * FROM hotline");
            rs = st.executeQuery();
            while(rs.next()){
                hotlineObj hotline = new hotlineObj();
                hotline.setHotlineId(rs.getInt("hotlineid"));
                hotline.setHotlineNumber(rs.getInt("hotlinenumber"));
                list.add(hotline);
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
    
    public hotlineObj getHotlineById(int hotlineId){
        Connection conn = null;
        PreparedStatement st = null;
        ResultSet rs = null;
        hotlineObj hotline = new hotlineObj();
        try {
            conn = database.getConnection();
            st = conn.prepareStatement("SELECT * FROM hotline WHERE hotlineid = ?");
            st.setInt(1, hotlineId);
            rs = st.executeQuery();
            rs.next();
            hotline.setHotlineId(rs.getInt("hotlineid"));
            hotline.setHotlineNumber(rs.getInt("hotlinenumber"));
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(typeDealDAO.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(typeDealDAO.class.getName()).log(Level.SEVERE, null, ex);
        }finally{
            try { rs.close(); } catch (Exception e) { /* ignored */ }
            try { st.close(); } catch (Exception e) { /* ignored */ }
            try { conn.close(); } catch (Exception e) { /* ignored */ }
        }
        return hotline;
   }

    
    
    
    public void updateHotline(int hotlineid, int hotlinenumber){
        Connection conn = null;
        PreparedStatement st = null;
        try {
            conn = database.getConnection();
            st = conn.prepareStatement("UPDATE hotline SET hotlinenumber = ? WHERE hotlineid = ?");
            st.setInt(1, hotlinenumber);
            st.setInt(2, hotlineid);
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
