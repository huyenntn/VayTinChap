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

/**
 *
 * @author Ngoc
 */
public class typeDealDAO {
    public ArrayList<typeDealObj> getAllTypeDeal() throws ClassNotFoundException, SQLException{
        Connection con = database.getConnection();
        PreparedStatement st = con.prepareStatement("SELECT * FROM typedeal");
        ResultSet rs = st.executeQuery();
        ArrayList<typeDealObj> list = new ArrayList<typeDealObj>();
        while(rs.next()){
            typeDealObj typeDeal = new typeDealObj();
            typeDeal.setTypedealId(rs.getInt("typedealId"));
            typeDeal.setTypedealName(rs.getString("typedealName"));
            list.add(typeDeal);
        }
        return list;
    }
    
    public typeDealObj getTypeDealById(int typedealId) throws ClassNotFoundException, SQLException{
        Connection conn = database.getConnection();
        PreparedStatement st = conn.prepareStatement("SELECT * FROM typedeal WHERE typedealId = ?");
        st.setInt(1, typedealId);
        ResultSet rs = st.executeQuery();
        
        rs.next();
        typeDealObj typedeal = new typeDealObj();
        typedeal.setTypedealId(rs.getInt("typedealId"));
        typedeal.setTypedealName(rs.getString("typedealName"));
        return typedeal;
   }

    
    public void addTypeDeal(String typedealName) throws ClassNotFoundException, SQLException{
        Connection conn = database.getConnection();
        PreparedStatement st = conn.prepareStatement("INSERT INTO typedeal (typedealName) VALUE(?);");
        st.setString(1, typedealName);
        st.executeUpdate();
    }
    
    public void updateTypeDeal(int typedealId, String typedealName) throws ClassNotFoundException, SQLException{
        Connection conn = database.getConnection();
        PreparedStatement st = conn.prepareStatement("UPDATE typedeal SET typedealName = ? WHERE typedealId = ?");
        st.setString(1, typedealName);
        st.setInt(2, typedealId);
        st.executeUpdate();
   }
    
   public void deleteTypeDealById(int typedealId) throws ClassNotFoundException, SQLException{
       Connection conn = database.getConnection();
        PreparedStatement st = conn.prepareStatement("DELETE FROM typedeal WHERE typedealId = ?");
        st.setInt(1, typedealId);
        st.executeUpdate();  
   }
}
