<%@page import="com.kosta.vo.DeptVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.kosta.dao.DeptDAO"%>
<%@page import="org.apache.catalina.security.DeployXmlPermission"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border="1" width="80%">
	<%
		DeptDAO dao = new DeptDAO();
		ArrayList<DeptVO> list = dao.findAll();
		for(DeptVO d:list){
			%>
				<tr>
					<td><%=d.getDno() %> </td>
					<td><%=d.getDname() %> </td>
					<td><%=d.getDloc() %> </td>
				</tr>
			<%
		}
	%>
	</table>
</body>
</html>