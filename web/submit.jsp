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
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ip_project","root"," ");
            PreparedStatement pst=con.prepareStatement("SELECT uname,pass FROM admin WHERE uname=?,pass=? ");
            pst.setString(1, username);
            pst.setString(2, password);
            ResultSet rs = pst.executeQuery();
            if(rs.next()) {
                out.println("Valid login credentials");
            } else {
                out.println("Invalid login credentials");
            }

        } catch(Exception e) {
            out.println("Something went wrong. The following exception took place :\n" + e);
        }
    %>
</body>