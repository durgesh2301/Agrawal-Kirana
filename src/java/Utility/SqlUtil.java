package Utility;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author HP
 */
public class SqlUtil {
     public static  Connection conn; 
       public static Statement stmt;
       
       final static String dbName="practiceCoaching";
       final static String dbUser="root";
       final static String dbPass="a";
       static public void connect() throws ClassNotFoundException,SQLException
       {
           Class.forName("com.mysql.jdbc.Driver");
          conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/grocery",dbUser,dbPass);
          stmt=conn.createStatement();
           
       }
       static public int insert(String query) throws SQLException
       {
             int result=-1;
             if(query!=null)
             {
                   result=stmt.executeUpdate(query);
             }
             return result;
       }
       static  public int update(String query) throws SQLException
       {
             int result=-1;
             if(query!=null)
             {
                   result=stmt.executeUpdate(query);
             }
             return result;
       }
       static public ResultSet read(String query) throws SQLException
       {
            ResultSet rs=null;
            if(query!=null)
            {
                  rs=stmt.executeQuery(query);
            }
            return rs;
       }
       static public void close() throws SQLException
       { 
             if(conn!=null)
             {
                   conn.close();
             }
           if(stmt!=null)
             {
                   stmt.close();
             }
           
       }
       
       
}
