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

	String sql = "SELECT * FROM one WHERE id='tset3'";
	PreparedStatement pstmt = conn.prepareStatement(sql);

	ResultSet rs = pstmt.executeQuery();// Create, Updata, Delete 즉 가지고 나오는 데이터가 없는 경우 사용
	
	rs.next();//꺼내온 그 자료로 가라
	
	out.print(rs.getString("id"));
	out.print(rs.getString("name"));
	out.print(rs.getString("age"));
	
	%>


</body>
</html>