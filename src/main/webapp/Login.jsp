<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
color:white;
background:black;
padding:6px 10px;
text-decoration:none;
font-size:18px;
}
.login{
color:white;
position:relative;
}
.loginform{
position:absolute;
top:10px;
right:110px;
}
 table{
width:220px;
height:200px;

}
</style>
</head>
<body>
<div class="login">
<img src="cypher.jpg" width="100%" height="720px">
<div class="loginform">
<form method="post" action="Login">
<h1>Login Form</h1>
<table>
<tr>
<td>UserName</td>
<td><input type="text" name="rname" required placeholder=" Enter Username"></td>
</tr>
<tr>
<td>Password</td>
<td><input type="password" name="rpass" required placeholder="Enter Password"></td>
</tr>
<tr><td colspan="2" align="center"><input type="submit" value="Login" name="sub" id="btn"></td></tr>
</table>
</form>
</div>
</div>

</body>
</html>