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
int amount=Integer.parseInt(request.getParameter("amount"));

out.print(" deposit amount is"+amount);






Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","vara","vara");

PreparedStatement ps=con.prepareStatement("select amount from bank where accountno=? and name=? and password=? ");
ps.setInt(1,accountno);
ps.setString(2,name);
ps.setString(3,password);
ResultSet rs=ps.executeQuery();



if(rs.next())
{
amount=amount+rs.getInt(1);
out.println("your deposit amount is"+amount);
}

PreparedStatement ps1=con.prepareStatement("update bank set amount=? where accountno=?");
ps1.setInt(1,amount);
ps1.setInt(2,accountno);
ps1.executeUpdate();

con.close();
}
catch(Exception e)
{
	out.print(e);

}

%>
</body>
</html>