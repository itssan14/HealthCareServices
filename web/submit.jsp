<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page contentType="text/html" language="java" import="java.sql.*"%>
<%@ page contentType="text/html" language="java" import="java.io.*,java.util.*"%>
<!DOCTYPE html>
<html>
<head>
    <title>Validating Your Information. :)</title>
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
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ip_project", "root", "root");
            Statement st=con.createStatement();
            ResultSet rs = st.executeQuery("SELECT * FROM admin WHERE uname='"+ username +"' AND password='"+ password +"'");
            //FETCHING CONTENTS FROM THE DATABASE
            while (rs.next())
            {
                String nam = rs.getString("name");
                if (nam != null) {
                    //CHECKING IF THE SQL QUERY RESULTED IN A SUCCESS
                    /* PASSING  INFO VIA URL TO NEW WEBPAGE
                        String pat = "patients.jsp?name=" + nam;
                        response.sendRedirect(pat);
                    */
                    response.sendRedirect("patients.jsp");
                } else {
                    //IF QUERY FAILED LIKELY THE PERSON IS NOT AN ADMIN AND DOES NOT  HAVE ACCESS TO PATIENT DETAILS
                    response.sendRedirect("failed.jsp");
                }
            }                                     
        } catch(Exception e) {
            out.println("Something went wrong. The following exception took place :\n" + e);
        }
    %>
</body>
</html>