<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<td><b> Select Bank:</b></td><td><SELECT NAME="bl">
<%

Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","java");



Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from  bank");
while(rs.next())
{
	%>
<option><%=rs.getString(2)%></option>
<%
}
	%>
</body>
</html>