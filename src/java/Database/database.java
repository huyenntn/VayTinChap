/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Ngoc
 */
public class database {
    public static Connection getConnection() throws ClassNotFoundException, SQLException{      
        Class.forName("com.mysql.jdbc.Driver");
        String url = "jdbc:mysql://node13331-tinchap.kilatiron.com/vaytinchap?zeroDateTimeBehavior=convertToNull&useUnicode=true&characterEncoding=UTF-8";
        Connection conn = DriverManager.getConnection(url,"root","GYFcao77464");
        return conn;        
    }
    
//    public static Connection getConnection() throws ClassNotFoundException, SQLException{      
//        Class.forName("com.mysql.jdbc.Driver");
//        String url = "jdbc:mysql://localhost:3306/vaytinchap?useUnicode=true&characterEncoding=UTF-8";
//        Connection conn = DriverManager.getConnection(url,"root","");
//        return conn;    }    
    

}
