<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page contentType="text/html" language="java" import="java.sql.*"%>
<%@ page contentType="text/html" language="java" import="java.io.*,java.util.*"%>
<!DOCTYPE html>
<html>
<head>
    <title>Register Here</title>
    <meta charset="utf-8">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link type="text/css" rel="stylesheet" href="css/materialize.min.css" media="screen,projection" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
</head>
<body>
    <%
        //Patient ID
        Random rn = new Random();
        int id = rn.nextInt(10000) + 1;
        //Name
        String fname = request.getParameter("FName");       
        String lname = request.getParameter("LName");
        String name = fname + lname;
        //Date & Time
        String date = request.getParameter("");
        String time = request.getParameter("");
        //Blood Group
        String blood = request.getParameter("");
        //Problem Description
        String comment = request.getParameter("");
        //Consultancy Doctor
        String docctor = request.getParameter("");
        //Email
        String email = request.getParameter("Mail");
        //Number
        String number = request.getParameter("Number");

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ip_project", "root", "root");
            String query = "INSERT INTO patients VALUE ( ?, ?, ?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement stmt = con.prepareStatement(query);
            stmt.setInt(1,id);
            stmt.setString(2,name);
            stmt.setString(3,date);
            stmt.setString(4,time);
            stmt.setString(5,blood);
            stmt.setString(6,comment);
            stmt.setString(7,doctor);
            stmt.setString(8,email);
            stmt.setInt(9,number);
            int pos=stmt.executeUpdate();
            if(pos > 0) {
                String result = "Succesfully Inserted";
            } else {
                String result = "Failed to insert into database. Try again later.";
            }
        } catch (Exception e) {
            String error = e;
        }
    
    %>
<!-- Navigation bar -->
    <nav>
        <div class="nav-wrapper blue darken-2">
            <div class="container">
                <a href="#" class="brand-logo">San</a>
                <ul id="nav-mobile" class="right hide-on-med-and-down">
                    <li><a href="1.html">About</a></li>
                    <li><a href="register.html">Appointments</a></li>
                    <li><a href="schedule.html">Schedules</a></li>
                    <li><a class="waves-effect waves-light btn white blue-text modal-trigger" href="#mod1">Login</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <!-- Footer -->
    <footer class="page-footer blue darken-2">
        <div class=" container ">
            <div class="row ">
                <div class="col l6 s12 ">
                    <h5 class="white-text ">Thanks for visiting us.</h5>
                    <p class="grey-text text-lighten-4 ">Lorem ipsum dolor sit, amet consectetur adipisicing elit. Suscipit impedit eius, praesentium nesciunt maiores perspiciatis nam et numquam inventore aliquid nihil nobis aut iste totam qui tenetur aperiam amet! Exercitationem voluptate,
                        enim dolore tempore quia corrupti sit, nostrum nam eligendi aliquam deserunt magnam similique iure rem ea cum rerum quis!</p>
                </div>
                <div class="col l4 offset-l2 s12 ">
                    <h5 class="white-text ">Links</h5>
                    <ul>
                        <li><a class="grey-text text-lighten-3 " href="#! ">About</a></li>
                        <li><a class="grey-text text-lighten-3 " href="#! ">Appointments</a></li>
                        <li><a class="grey-text text-lighten-3 " href="#! ">Login</a></li>
                        <li><a class="grey-text text-lighten-3 " href="#! ">Schedule</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="footer-copyright ">
            <div class="container ">
                © 2017 Copyright Sanjay
            </div>
        </div>
    </footer>
    <!-- Javascript -->
    <script type="text/javascript " src="js/jquery-3.2.1.min.js "></script>
    <script type="text/javascript " src="js/materialize.min.js "></script>
    <!--<script type="text/javascript " src="js/gen.js "></script>-->
</body>