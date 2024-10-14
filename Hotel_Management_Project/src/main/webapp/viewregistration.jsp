<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
/* Basic Reset */
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

/* Body Styling */
body {
    height: 100vh;
    display: flex;
    align-items: center;
    justify-content: center;
    flex-direction: column;
    background: linear-gradient(to right, #ffafbd, #ffc3a0);
    font-family: 'Arial', sans-serif;
    padding: 20px;
}

/* Table Styling */
table {
    border-collapse: collapse;
    width: 100%;
    max-width: 600px;
    background-color: #fff;
    border-radius: 10px;
    box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
    overflow: hidden;
}

/* Table Cells */
td {
    padding: 15px;
    text-align: left;
    border-bottom: 1px solid #ddd;
    font-size: 18px;
}

/* Links Styling */
a {
    text-decoration: none;
    color: #3498db;
    font-weight: bold;
    transition: color 0.3s;
}

a:hover {
    color: #2ecc71;
}

/* Header Styling */
h1 {
    font-size: 36px;
    margin-bottom: 20px;
    color: #2c3e50;
}

/* Responsive Media Query */
@media (max-width: 600px) {
    table {
        width: 90%;
    }
    td {
        font-size: 16px;
        padding: 10px;
    }
    h1 {
        font-size: 28px;
    }
}

input{
height: 25px;
}

/* Adding Background Image */
body::before {
    content: "";
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background-image: "https://www.travelandleisure.com/thmb/rN0WUat7yHF4sGXcdqZqx7BH12U=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/peninsula-manila-025-TOPHOTELSWB21-701643345970426694bf0f94bbe06595.jpg"
 
    background-size: cover;
    background-position: center;
    opacity: 0.4;
    z-index: -1;
}
</style>
</style>
</head>
<body>
	<form action="viewregistrationdb.jsp">
	<center><h1>View Registration</h1></center>
	
	<table>
	<tr>
	<td>Enter Name : </td>
	<td><input type="text" placeholder="Enter Guest Name" name="guestname"></td>
	</tr>
	<tr>
	<td>Enter Mobile Number : </td>
	<td><input type="number" placeholder="Enter Mobile Number" name="phone"></td>
	</tr>

	<td></td>
	<td><input type="submit" value="submit"></td>
	</tr>
	
	</table>
	</form>
</body>
</html>