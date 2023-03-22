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





<P></P>
<P></P>
<P></P>


<h1 >OPEN ACCOUNTFORM</h1>
<form action="HomeCode.jsp" method="post">
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


<td>Confirm_Password:   </td>    
<td><input type="password"name="confirmpswd"></td>
</tr>

<td>Amount:    </td>    
<td><input type="number"name="amount"></td>
</tr>

<td>Address:    </td>    
<td><input type="text"name="add"></td>
</tr>


<td>Mobile Number:   </td>    
<td><input type="number"name="mno"></td>
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