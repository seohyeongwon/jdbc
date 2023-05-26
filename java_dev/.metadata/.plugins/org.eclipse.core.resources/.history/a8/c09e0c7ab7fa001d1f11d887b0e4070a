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
		try {

		Class.forName("org.mariadb.jdbc.Driver");
		//Class.forName("org.mariadb.jdbc.Driver"); MySQL 사용시

		out.print("드라이버 로드 성공...<br>");
	} catch (ClassNotFoundException err) {
		out.print("드라이버 로드 실패...<br>" + err.getMessage());
	}
	%>



	<!-- Step 3 Connection Object -->
	<%
	Connection conn = null;	
	try{
		String host = "jdbc:mariadb://localhost:3306/won";
		String id = "root";
		String ps = "1234";

		conn = DriverManager.getConnection(host, id, ps);
		out.print("연결 객체 생성 성공....<br>");
	}catch(SQLException err){
		out.print("연결 객체 생성 실패....<br>"+err.getMessage());
	}
	

	%>
	
	<!-- Step 4 Statement Object -->

<%
String sql="DROR TABLE test";
PreparedStatement pstmt = conn.prepareStatement(sql);

out.print("구문 생성 성공...<br>");

%>



<!-- Step 5 SQL Activate -->
<%

//pstmt.executeQuery();// Read 즉 가지고 나오는 데이터가 잇을경우 사용
pstmt.executeUpdate();// Create, Updata, Delete 즉 가지고 나오는 데이터가 없는 경우 사용


out.print("테이블 삭제 성공...<br>");

%>

<!-- Step 6 ResultSet Object -->
<!-- 
C R U D 중에서 반환 데이터가 있는 경우는 R 만이다.
C U D 의 경우는 반환되는 데이터가 없다. 따라서 C U D 는 step 6 이 생략 된다

하지만 C U D의 경우에도 반환되는 데이터가 존재하기는 한다.
성공했을 경우는 1이 반환되고 실패 했을 경우에는 0이 반환된다.
 -->
<%



%>


</body>
</html>