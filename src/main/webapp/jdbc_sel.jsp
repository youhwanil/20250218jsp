<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String URL = "jdbc:mysql://localhost:3309/spring5fs";
String sql = "select * from dept";
Class.forName("com.mysql.cj.jdbc.Driver");
try(Connection conn = DriverManager.getConnection(URL,"root","1234");
		Statement stmt = conn.createStatement();
		ResultSet rs = stmt.executeQuery(sql);
		)
{	out.println("<table border='1'>");
	out.println("<tr><th>deptno</th><th>dname</th><th>loc</th></tr>");

	while(rs.next()){
	out.println("<tr>");
	out.print("<td>" + rs.getString(1) + "</td>");
	out.print("<td>" + rs.getString(2) + "</td>");
	out.print("<td>" + rs.getString(3) + "</td>");
	out.println("</tr>");
	}
	out.println("</table>");
}catch(Exception e){
	e.printStackTrace();
}
%>
</body>
</html>