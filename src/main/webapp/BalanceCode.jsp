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



Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","vara","vara");
PreparedStatement ps=con.prepareStatement("select accountno,name,amount,address,mobileno from bank where accountno=? and name=? and password=?");
ps.setInt(1,accountno);
ps.setString(2,name);
ps.setString(3,password);

ResultSet rs=ps.executeQuery();
ResultSetMetaData rsmd=rs.getMetaData();
out.print("<table border='1'>");
int n=rsmd.getColumnCount();
for(int i=1;i<=n;i++)
	out.print("<td><font-color:'blue' size=3>"+"<br>"+rsmd.getColumnName(i));
out.print("<tr>");

if(rs.next())
{
	for(int i=1;i<=n;i++)
		
out.print("<td><br>"+rs.getString(i));
	out.print("<tr>");
}
	out.print("</table><body><html>");
	con.close();
	
  }
catch(Exception e) {
	out.print(e);

}
%>
</body>
</html>