<%-- 
    Document   : sendData
    Created on : Jun 19, 2021, 12:38:53 AM
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
           String Name=request.getParameter("name");
           String Description=request.getParameter("desc");
           String location=request.getParameter("loc");
           %>
            <dbsql:setDataSource var="db" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost/issuetrack"
                             user="root" password=""/>
            <dbsql:update dataSource="${db}" var="updatedb">
               
                INSERT into issue(Number,Name,Description,location)  values("2","${Name}","${Description}","${location}"); 
            </dbsql:update>
            <% response.sendRedirect("Success.jsp"); %>
    </body>
</html>
