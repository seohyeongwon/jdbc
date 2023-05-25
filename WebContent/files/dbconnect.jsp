<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- Step 1 SQL Package Import -->
<%@ page import="java.sql.*"%>



	<!-- Step2 JDBC Driver Load -->

	<%
		Class.forName("org.mariadb.jdbc.Driver");

	Connection conn = null;

	String host = "jdbc:mariadb://localhost:3306/won";
	String id = "root";
	String ps = "1234";

	conn = DriverManager.getConnection(host, id, ps);
%>