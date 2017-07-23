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
//    public static Connection getConnection() throws ClassNotFoundException, SQLException{      
//        Class.forName("com.mysql.jdbc.Driver");
//        String url = "jdbc:mysql://node12817-vaytinchap.kilatiron.com/vpbank?zeroDateTimeBehavior=convertToNull&useUnicode=true&characterEncoding=UTF-8";
//        Connection conn = DriverManager.getConnection(url,"root","AOCngx66719");
//        return conn;        
//    }
    
    public static Connection getConnection() throws ClassNotFoundException, SQLException{      
        Class.forName("com.mysql.jdbc.Driver");
        String url = "jdbc:mysql://localhost:3306/vaytinchap?useUnicode=true&characterEncoding=UTF-8";
        Connection conn = DriverManager.getConnection(url,"root","");
        return conn;    }    
    
    
//    public static Connection getConnection() throws ClassNotFoundException, SQLException{      
//        Class.forName("com.mysql.jdbc.Driver");
//        String url = "jdbc:mysql://mysql.hostinger.vn/u622636942_vpban?zeroDateTimeBehavior=convertToNull&useUnicode=true&characterEncoding=UTF-8";
//        Connection conn = DriverManager.getConnection(url,"u622636942_root","123456");
//        return conn;        
//    }
}
