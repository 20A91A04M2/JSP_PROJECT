<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style >
body {
    height: 100vh;
    display: flex;
    align-items: center;
    justify-content: center;
    flex-direction: column;
    background: pink;
}
table {
    border: 1px solid #000;
    padding: 10px;
    background-color:skyblue; 
    border:none;
}
td {
    padding: 10px;
}
</style>
</head>
<body>
	<form action="updateregistrationdb.jsp">
		<table>
			<tbody>
				<tr>
					<td>Enter Room Number : </td>
					<td><input type="text" placeholder="enter roomnumber" name="groomno"></td>
				</tr>
				
				<tr>
					<td>Enter Guest Mobile Number : </td>
					<td><input type="text" placeholder="enter guest mobile number" name="gnumber"></td>
				</tr>
				
				<tr>
					<td>  </td>
					<td><input type="submit"></td>
				</tr>
				
			</tbody>
		</table>
	</form>
</body>
</html>