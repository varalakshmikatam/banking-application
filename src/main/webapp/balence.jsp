<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<center>
<table  bgcolor="pink"
        cellpadding="20px"    
                         >
<h1 style=color:red>SDFC BANK</h1>
<h2 style=color:red>EXTRAORDINARY SERVICES</h2>

<tr>
<td><a href="home.jsp">Home</a>&emsp;&emsp;
<a href="newaccount.jsp">New Account</a>&emsp;&emsp;
<a href="balence.jsp">Balance</a>&emsp;&emsp;
<a href="deposit.jsp">Deposit</a>&emsp;&emsp;
<a href="withdraw.jsp">Withdraw</a>&emsp;&emsp;
<a href="transfer.jsp">Transfer</a>&emsp;&emsp;
<a href="close.jsp">Close A/C</a>&emsp;&emsp;
<a href="about.jsp">About</a></td>&emsp;&emsp;
</tr>
</table>

<h1 >BALANCE FORM</h1>
<form action="BalanceCode.jsp" method="post">
<table>
<tr> 
<td>Account Number:    </td>    
<td><input type="number" name="ano"></td>
</tr>


<td>Name:    </td>    
<td><input type="text" name="name"></td>
</tr><P></P>


<td>Password:    </td>    
<td><input type="password" name="pswd"></td>
</tr>
<tr>
<td><input type="submit" value="submit"></td>
<td><input type="reset" value="reset"></td>
</tr>


</table>
</form>
</center>
</body>
</html>