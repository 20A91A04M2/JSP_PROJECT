<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
    String name = request.getParameter("guestname");
    String phone = request.getParameter("phone");
    String Roomno = request.getParameter("roomnumber");
    String aadhar = request.getParameter("aadhar");
    String checkindate = request.getParameter("checkin");

    Connection con = null;
    PreparedStatement pre = null;
    
    try {
        // Load MySQL JDBC Driver
        Class.forName("com.mysql.cj.jdbc.Driver");
        
        // Establish the connection to the database
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Hotelmgmtjsp", "root", "Chaitu#321");
        
        // SQL query to insert guest details
        String query = "INSERT INTO guest(guestname, mobile, roomno, aadhar, checkin) VALUES (?,?,?,?,?)";
        pre = con.prepareStatement(query);
        
        // Setting values to the query
        pre.setString(1, name);
        pre.setString(2, phone);
        pre.setString(3, Roomno);
        pre.setString(4, aadhar);
        pre.setString(5, checkindate);
        
        // Execute the query
        int result = pre.executeUpdate();
        
        if (result != 0) {
            // Display success message
            out.println("Data inserted successfully!");
        } else {
            // Display failure message
            out.println("Data not inserted.");
        }
    } catch (Exception e) {
        // Print any exception that occurs
        out.println("Error: " + e.getMessage());
    } finally {
        // Close the database resources
        try {
            if (pre != null) pre.close();
            if (con != null) con.close();
        } catch (Exception e) {
            out.println("Error while closing connection: " + e.getMessage());
        }
    }
%>
</body>
</html>
