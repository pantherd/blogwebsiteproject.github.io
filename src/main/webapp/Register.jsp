<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
   pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Harsh Kadam</title>
<style>
*{
padding:0;
margin:0;
box-sizing:border-box;
list-style:none;
text-decoration:none;
}
#btn{
color:purple;
background:black;
padding:6px 10px;
text-decoration:none;
font-size:18px;
}
.main{
position:relative;
color:purple;
}
.form{
position:absolute;
top:40px;
left:110px;
}
table{
width:200px;
height:300px;
}
</style>
</head>
<body>
<div class="main">
<img src="1149777.jpg" width="100%" height="770px">
<div class="form">
<form method="post" action="InsertData">
<h1>Registration Form</h1>
<table>
<tr>
<td>User Name</td>
<td><input type="text" name="rname" required></td>
</tr>
<tr>
<td>Password</td>
<td><input type="password" name="rpass" required></td>
</tr>
<tr>
<td>Email</td>
<td><input type="text" name="remail" required></td>
</tr>
<tr>
<td>City</td>
<td><input type="text" name="rcity" required></td>
</tr>
<tr><td colspan="2" align="center"><input type="submit" value="Register" name="sub" id="btn"></td></tr>
</table>
</form>
</div>
</div>
</body>
</html>