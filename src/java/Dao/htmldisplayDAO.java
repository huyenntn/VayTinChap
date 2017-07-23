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

/**
 *
 * @author Ngoc
 */
public class htmldisplayDAO {
    public ArrayList<htmldisplayObj> getAllHtml() throws ClassNotFoundException, SQLException{
        Connection con = database.getConnection();
        PreparedStatement st = con.prepareStatement("SELECT * FROM htmldisplay");
        ResultSet rs = st.executeQuery();
        ArrayList<htmldisplayObj> list = new ArrayList<htmldisplayObj>();
        while(rs.next()){
            htmldisplayObj htmlcode = new htmldisplayObj();
            htmlcode.setHtmlId(rs.getInt("htmlId"));
            htmlcode.setHtmlcode(rs.getString("htmlcode"));
            list.add(htmlcode);
        }
        return list;
    }
    
   public void addHtml(String htmlcode) throws ClassNotFoundException, SQLException{
        Connection conn = database.getConnection();
        PreparedStatement st = conn.prepareStatement("INSERT INTO htmldisplay (htmlcode) VALUE(?);");
        st.setString(1, htmlcode);
        st.executeUpdate();
    }
   
   public void updateHtml(int htmlId, String htmlcode) throws ClassNotFoundException, SQLException{
        Connection conn = database.getConnection();
        PreparedStatement st = conn.prepareStatement("UPDATE htmldisplay SET htmlcode = ? WHERE htmlId = ?");
        st.setString(1, htmlcode);
        st.setInt(2, htmlId);
        st.executeUpdate();
   }
   
   public htmldisplayObj getHtmlById(int htmlId) throws ClassNotFoundException, SQLException{
        Connection conn = database.getConnection();
        PreparedStatement st = conn.prepareStatement("SELECT * FROM htmldisplay WHERE htmlId = ?");
        st.setInt(1, htmlId);
        ResultSet rs = st.executeQuery();
        
        rs.next();
        htmldisplayObj htmlcode = new htmldisplayObj();
        htmlcode.setHtmlId(rs.getInt("htmlId"));
        htmlcode.setHtmlcode(rs.getString("htmlcode"));
        return htmlcode;
   }
   
   public void deleteHtml(int htmlId) throws ClassNotFoundException, SQLException{
       Connection conn = database.getConnection();
        PreparedStatement st = conn.prepareStatement("DELETE FROM htmldisplay WHERE htmlId = ?");
        st.setInt(1, htmlId);
        st.executeUpdate();  
   }
}
