<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- Step 1 SQL Package Import -->
<%@ page import="java.sql.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<!-- Step2 JDBC Driver Load -->

	<%
		Class.forName("org.mariadb.jdbc.Driver");

	Connection conn = null;

	String host = "jdbc:mariadb://localhost:3306/won";
	String id = "root";
	String ps = "1234";

	conn = DriverManager.getConnection(host, id, ps);

	String sql = "UPDATE one SET NAME = 'exam' WHERE id='tset2'";
	PreparedStatement pstmt = conn.prepareStatement(sql);

	pstmt.executeUpdate();// Create, Updata, Delete 즉 가지고 나오는 데이터가 없는 경우 사용
	%>


</body>
</html>