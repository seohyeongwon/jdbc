<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<%@ include file="dbconnect.jsp" %>
	<%

	String sql = "INSERT INTO one VALUES('tset4','tset4',44)";
	PreparedStatement pstmt = conn.prepareStatement(sql);

	pstmt.executeUpdate();// Create, Updata, Delete 즉 가지고 나오는 데이터가 없는 경우 사용
	%>


</body>
</html>