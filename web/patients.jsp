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
        String name = request.getParameter("name");
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ip_project", "root", "root");
            Statement st=con.createStatement();
            //VALIDATING IF THE ENTERED CREDENTIALS ARE AVAILABLE IN THE DATABASE
            ResultSet rs = st.executeQuery("SELECT * FROM patients");
            //FETCHING CONTENTS FROM THE DATABASE
        } catch (Exception e) {
                out.println("Error :" + e);
        }
    
    %>
<!-- Navigation bar -->
    <nav>
        <div class="nav-wrapper blue darken-2">
            <div class="container">
                <a href="#" class="brand-logo">San</a>
                <ul id="nav-mobile" class="right hide-on-med-and-down">
                    <li><a href="1.html">About</a></li>
                    <li><a href="apt.html">Appointments</a></li>
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