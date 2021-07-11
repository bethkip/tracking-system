<%-- 
    Document   : loginCeck
    Created on : Jun 18, 2021, 9:46:20 PM
    Author     : vincent
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.io.*,java.util.*,java.sql.*" %>
<%@page import="javax.servlet.http.*,javax.servlet.*" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="dbcore" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="dbsql" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
           String username=request.getParameter("username");
           String password=request.getParameter("password"); %>
           <dbsql:setDataSource var="db" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost/issuetrack"
                             user="root" password=""/>
           <dbsql:query dataSource="${db}" var="dbvar">
            SELECT * from credentials where username="${username}" and password="${password}";
        </dbsql:query>
           <%
           if(username.equals("Vincent")&& password.equals("123"))
           {
               session.setAttribute("username",username);
               
               response.sendRedirect("Homepage.jsp");
           }
           else{
               response.sendRedirect("login.jsp");
           }
           
           %>
           
    </body>
</html>
