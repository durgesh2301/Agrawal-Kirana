<%-- 
    Document   : delete
    Created on : 10 Apr, 2019, 9:21:35 AM
    Author     : HP
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%!
       Statement st;
       Connection cn;
       ResultSet rs;
       String query,q2,log;
       
       %>
       <%
           try{
               log=(String)session.getAttribute("uname");
               if(request.getParameter("deletecart")!=null)
               {
                   Class.forName("com.mysql.jdbc.Driver");
          cn= DriverManager.getConnection("jdbc:mysql://localhost:3306/grocery","root","a");
          st=cn.createStatement();
                   
                   String select[]=request.getParameterValues("chkbx");
     
           for(String s:select)
           {
               query="delete from cart where pid='"+s+"' && userID='"+log+"' ";
          st.executeUpdate(query);
                  out.println("<script>document.location.href='cart.jsp';</script>");
        
           }
        
       
       
               }
               else{
                       out.println("<script>alert('login to continue');document.location.href='login.jsp';</script>");
        
               }
               
               
           }catch(Exception ex)
           {
               out.println("<script>alert('Please select something');document.location.href='cart.jsp';</script>");
               System.out.println("Exception ex"+ex);
           }
           
           
           %>
    </body>
</html>
