<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page contentType="text/html" language="java" import="java.sql.*"%>
<%@ page contentType="text/html" language="java" import="java.io.*"%>
<!DOCTYPE html>
<html>
<head>
    <title>Welcome</title>
    <meta charset="utf-8">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link type="text/css" rel="stylesheet" href="css/materialize.min.css" media="screen,projection" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
</head>
<body>
    <%
        try {
            String username=request.getParameter("email");
            String password=request.getParameter("pass");
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3308/ip_project", "root", "root");
            Statement pst=con.createStatement();
            ResultSet rs = pst.executeQuery("SELECT name FROM admin WHERE uname='"+ username +"' AND password='"+ password +"'");
            out.println("Welcome "+ rs.getString(0) );
        } catch(Exception e) {
            out.println("Something went wrong. The following exception took place :\n" + e);
        }
    %>
</body>