<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Room Number</title>
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
    String phone = request.getParameter("gnumber");
    String newRoomNo = request.getParameter("groomno");

    if (phone != null && newRoomNo != null) {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Hotelmgmtjsp", "root", "Chaitu#321");

            // Update the room number based on the mobile number
            String updateQuery = "UPDATE guest SET roomno = ? WHERE mobile = ?";
            PreparedStatement pstmt = con.prepareStatement(updateQuery);
            pstmt.setString(1, newRoomNo);
            pstmt.setString(2, phone);
            int rowsAffected = pstmt.executeUpdate();

            if (rowsAffected > 0) {
                %>
                <h2>Room number updated successfully!</h2>
                <h2>New Room Number: <%= newRoomNo %></h2>
                <%
            } else {
                %>
                <h2>No guest found with the provided mobile number.</h2>
                <%
            }

            pstmt.close();
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
            out.println("Error: " + e.getMessage());
        }
    } else {
        out.println("Please provide both the new room number and the mobile number.");
    }
%>
</body>
</html>