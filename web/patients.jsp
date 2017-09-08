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
    <link  rel="stylesheet" href="css/style.css" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
</head>
<body>
<div class="page-felxbox-wrapper">
<!-- Navigation bar -->
    <nav>
        <div class="nav-wrapper blue darken-2">
            <div class="container">
                <a href="#" class="brand-logo">San</a>
                <ul id="nav-mobile" class="right hide-on-med-and-down">
                    <li><a href="1.html">About</a></li>
                    <li><a href="apt.html">Appointments</a></li>
                    <li><a href="schedule.html">Schedules</a></li>
                    <li><a class="waves-effect waves-light btn white blue-text modal-trigger"><% String nam = request.getParameter("name"); out.println("Hi, " + nam);%></a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <!--Table For Displaying Patient Details-->      
    <main>
        <table class="bordered highlight responsive-table">
            <thead>
                <tr>
                    <th>Patient Id</th>
                    <th>Patient Name</th>
                    <th>Date</th>
                    <th>Time</th>
                    <th>Blood Group</th>
                    <th>Problem</th>
                    <th>Doctor</th>
                    <th>E-Mail</th>
                    <th>Mobile Number</th>
                </tr>
            </thead>
            <%
                Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ip_project", "root", "root"); 
                Statement st=con.createStatement();
                //VALIDATING IF THE ENTERED CREDENTIALS ARE AVAILABLE IN THE DATABASE
                ResultSet rs = st.executeQuery("SELECT * FROM patients");
                //FETCHING CONTENTS FROM THE DATABASE
                while (rs.next()) {  
            %>
            <tbody>
                <tr>
                    <td><%= rs.getString("patient_id")%></td>
                    <td><%= rs.getString("patient_name")%></td>
                    <td><%= rs.getString("date_created")%></td>
                    <td><%= rs.getString("time")%></td>
                    <td><%= rs.getString("patient_blood")%></td>
                    <td><%= rs.getString("commment")%></td>
                    <td><%= rs.getString("doctor")%></td>
                    <td><%= rs.getString("mail")%></td>
                    <td><%= rs.getString("cno")%></td>
                </tr>
            </tbody>
            <%
                }
            %>
        </table>
    </main>
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
    </div>
    <!-- Javascript -->
    <script type="text/javascript " src="js/jquery-3.2.1.min.js "></script>
    <script type="text/javascript " src="js/materialize.min.js "></script>
    <script type="text/javascript " src="js/gen.js "></script>
</body>