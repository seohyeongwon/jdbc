<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<%
	Class.forName("org.mariadb.jdbc.Driver");


	Connection conn = null;
	String host = "jdbc:mariadb://localhost:3306/comstudy21";
	String id = "root";
	String ps = "1234";
	conn = DriverManager.getConnection(host, id, ps);

	
	String sql = "UPDATE saram SET NAME='exam21' WHERE id='test2'";
	PreparedStatement pstmt = conn.prepareStatement(sql);

	
	pstmt.executeUpdate();

%>





</body>
</html>