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
int tamt=Integer.parseInt(request.getParameter("amount"));
int tarno=Integer.parseInt(request.getParameter("accno"));
int j=0;
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","odb","odb");
PreparedStatement ps=con.prepareStatement("select amount from bank where accountno=? and name=? and password=?");
ps.setInt(1,accountno);
ps.setString(2,name);
ps.setString(3,password);
ResultSet rs=ps.executeQuery();
if(rs.next())
{
	int temp=rs.getInt(1);
	if(tamt<temp)
	{
		int amount=temp-tamt;
        PreparedStatement ps1=con.prepareStatement("update bank set amount=? where accountno=?");
        ps1.setInt(1,amount);
        ps1.setInt(2,accountno);
        int i=ps1.executeUpdate();
       if(i==1)
       {
	      PreparedStatement ps2=con.prepareStatement("update bank set amount=? where accountno=?");
	      ps2.setInt(1,amount);
	      ps2.setInt(2,accountno);
	      j=ps2.executeUpdate();
       }
       if(j==1)
       {
    	   out.print("<h2>Account Info</h2>");
    	   out.print("amount transfered");
       }
      else
      {
	      out.print("amount not transfered");
      }
   }
	else
	{
		out.print("withdraw amount should be less than balance");
	}
}
else
	out.print("enter valid details");
con.close();
}



catch(Exception ex)
{
	out.print(ex);
}
%>



</body>
</html>