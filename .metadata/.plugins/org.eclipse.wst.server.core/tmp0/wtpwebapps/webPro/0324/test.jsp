<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- 
	Java Server Page
	java코드와 html을 같이 작성할 수 있는 서버페이지
	
	<%%> 스크립트릿이라고 부르는 공간 안쪽에 자바코드 입력가능
	그외 바깥쪽 영역에 html을 입력하여 사용
-->
<%
	request.setCharacterEncoding("utf-8"); // post로 데이터 넘어올 때 한글 깨짐 방지를 위한 encoding

	String userNm = request.getParameter("name");
	String alias = request.getParameter("alias");
	String[] userSkill = request.getParameterValues("skill");
	String skill = "";
	for (int i = 0; i < userSkill.length; i++) {
		if (i > 0) skill += ", ";
		skill += userSkill[i];
	}
%>
<%= 
	"넘어온 데이터 정보<br>" 
	+ "이름: " + userNm + "<br>" 
	+ "별명: " + alias + "<br>" 
	+ "잘하는 것: [" + skill + "]<br><br>" 
%>
<%-- <% System.out.println("콘솔로 출력..."); %> --%>
<%-- <%= "안쪽에서 java코드를 작성할 수 있습니다(동일) <br>" %> --%>
<!-- 안쪽에서 java코드를 작성할 수 있습니다(동일) -->

</body>
</html>