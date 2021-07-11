<%-- 
    Document   : logout
    Created on : Jun 19, 2021, 3:52:43 AM
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
        <% session.setAttribute("",""); 
        response.sendRedirect("login.jsp");
        %>
    </body>
</html>
