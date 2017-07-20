/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

import Database.database;
import Modal.profileObj;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author Ngoc
 */
public class profileDAO {
    public ArrayList<profileObj> getAllProfile() throws ClassNotFoundException, SQLException{
        Connection con = database.getConnection();
        PreparedStatement st = con.prepareStatement("SELECT * FROM profile");
        ResultSet rs = st.executeQuery();
        ArrayList<profileObj> list = new ArrayList<profileObj>();
        while(rs.next()){
            profileObj profile = new profileObj();
            profile.setProfileId(rs.getInt("profileId"));
            profile.setProfileName(rs.getString("profileName"));
            list.add(profile);
        }
        return list;
    }
    
   public void addProfile(String profileName) throws ClassNotFoundException, SQLException{
        Connection conn = database.getConnection();
        PreparedStatement st = conn.prepareStatement("INSERT INTO profile (profileName) VALUE(?);");
        st.setString(1, profileName);
        st.executeUpdate();
    }
   
   public void updateProfile(int profileId, String profileName) throws ClassNotFoundException, SQLException{
        Connection conn = database.getConnection();
        PreparedStatement st = conn.prepareStatement("UPDATE profile SET profileName = ? WHERE profileId = ?");
        st.setString(1, profileName);
        st.setInt(2, profileId);
        st.executeUpdate();
   }
   
   public profileObj getProfileById(int profileId) throws ClassNotFoundException, SQLException{
        Connection conn = database.getConnection();
        PreparedStatement st = conn.prepareStatement("SELECT * FROM profile WHERE profileId = ?");
        st.setInt(1, profileId);
        ResultSet rs = st.executeQuery();
        
        rs.next();
        profileObj profile = new profileObj();
        profile.setProfileId(rs.getInt("profileId"));
        profile.setProfileName(rs.getString("profileName"));
        return profile;
   }
   
   public void deleteProfileById(int profileId) throws ClassNotFoundException, SQLException{
       Connection conn = database.getConnection();
        PreparedStatement st = conn.prepareStatement("DELETE FROM profile WHERE profileId = ?");
        st.setInt(1, profileId);
        st.executeUpdate();  
   }
}
