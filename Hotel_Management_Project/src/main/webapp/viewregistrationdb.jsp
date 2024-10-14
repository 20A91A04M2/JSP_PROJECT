<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Guest Details</title>
<style>
body {
    display: flex;
    align-items: center;
    justify-content: center;
    flex-direction: column;
    background: pink;
}
</style>
</head>
<body>
<%
    String name = request.getParameter("guestname");
    String phone = request.getParameter("phone");

    if (name != null && phone != null) {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Hotelmgmtjsp", "root", "Chaitu#321");

            String query = "SELECT guestname, mobile, roomno, aadhar, checkin FROM guest WHERE guestname = ? AND mobile = ?";
            PreparedStatement pstmt = con.prepareStatement(query);
            pstmt.setString(1, name);
            pstmt.setString(2, phone);
            ResultSet res = pstmt.executeQuery();

            if (res.next()) {
                String gname = res.getString("guestname");
                String mobile = res.getString("mobile");
                int room = res.getInt("roomno");
                String aadhar = res.getString("aadhar");
                String checkin = res.getString("checkin");

                %>
                <h2>Guest Name: <%= gname %></h2>
                <h2>Guest Mobile Number: <%= mobile %></h2>
                <h2>Guest Room Number: <%= room %></h2>
                <h2>Guest Aadhar Number: <%= aadhar %></h2>
                <h2>Guest Checkin Date: <%= checkin %></h2>
                <%
            } else {
                %>
                <h2>No guest found with the provided name and mobile number.</h2>
                <%
            }

            res.close();
            pstmt.close();
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
            out.println("Error: " + e.getMessage());
        }
    } else {
        out.println("Please provide both name and mobile number.");
    }
%>
</body>
</html>