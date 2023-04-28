<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String uId = request.getParameter("userId");
	String uPw = request.getParameter("userPw");
	System.out.println(uId + ">>>>" + uPw);
	
	Class.forName("oracle.jdbc.driver.OracleDriver");
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	Connection conn = DriverManager.getConnection(url, "pc20", "java");
	Statement stmt = conn.createStatement();
	
	String sql = "select mem_id from member"
			+ " where mem_id = '" + uId + "'"
			+ " and mem_pass = '" + uPw + "'";
			
	ResultSet rs = stmt.executeQuery(sql);
	
	if (rs.next()) {
		// 성공 결과
%>		{"rst" : "ok"}
<%	} else {
		// 실패 결과
%>		{"rst" : "fail"}
<%	}
%>