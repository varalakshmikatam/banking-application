<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
try
{
int accountno=Integer.parseInt(request.getParameter("ano"));
String name=request.getParameter("name");
String password=request.getParameter("pswd");
String confirmpass=request.getParameter("confirmpswd");
int amount=Integer.parseInt(request.getParameter("amount"));
String address=request.getParameter("add");
long mobileno=Long.parseLong(request.getParameter("mno"));
   

Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","vara","vara");
PreparedStatement ps=con.prepareStatement("insert into bank values(?,?,?,?,?,?,?)");
ps.setInt(1,accountno);
ps.setString(2,name);
ps.setString(3,password);
ps.setString(4,confirmpass);
ps.setDouble(5,amount);
ps.setString(6,address);
ps.setLong(7,mobileno);

int i=ps.executeUpdate();
out.print(i+"one row is inserted");
}
catch(Exception e)
{
out.print(e);


}
%>
</body>
</html>