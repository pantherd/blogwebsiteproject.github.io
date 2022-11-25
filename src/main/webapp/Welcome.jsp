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
color:white;
background:black;
padding:6px 10px;
text-decoration:none;
font-size:18px;
}
.btn{
color:black;
padding:6px 8px;
text-decoration:none;
font-size:18px;

}
body{
overflow-X:hidden;
}
nav{
height:80px;
align-items:center;
justify-content:space-between;
display:flex;
padding:0 50px 0 80px;
background:black;
}
nav ul{
display:flex;
}
.logo{
color:white;
font-size:30px;
font-weight:bold;
}
nav ul li{
margin:0 8px;
}
nav ul li a{

font-size:18px;
letter-spacing:1px;
padding:8px 10px;
border-radius:3px;


}

header{
background-image:linear-gradient(rgba(0,0,0,0.75),rgba(0,0,0,0.75)),url("best.png");
width:100%;
height:530px;
background-repeat:no-repeat;
background-size:100% 100%;
display:flex;
flex-direction:column;
align-items:center;
justify-content:center;

}
.content h1, p{
color:white;
margin:5px 0;
}
button{
color:black;
background:white;
padding:10px 20px;
text-transform:uppercase;
font-weight:bold;
border:none;
outline:none;
margin-top:10px;
}

#click{
display:none;
}


@media (max-width:668px){

nav .menu-btn i{
display:block;
color:white;
}
#click:checked ~.menu-btn i:before{
content:"\f00d";
}
		
	nav ul{
		position:fixed;
		left:-100%;
		top:80px;
		background:black;
		height:100vh;
		width:100%;
		display:block;
		text-align:center;
		transition:all 0.3s;

	}
	
	#click:checked ~ ul{
	left:0%;
}
	nav ul li{
	margin:40px 0;
	}
	nav ul li a{
	font-size:20px;
	display:block;
	color:black;
	
	}
	
	.content h1,p,button{
		margin-right:100px;
	
	}
		
}
.content h1,p{
color:white;
margin:5px 0;
}
}

</style>
</head>
<body>
<form>
<div class="Welcome">
<div class="welcomepage">
<nav>
<h1 class="logo">HARSH</h1>
<input type="checkbox" id="click">
<label for="click"  class="menu-btn">
<i class="fas fa-bars"></i>
</label>
<ul>
<li><a href="#" class="active"><input type="submit" value="Logout" name="logout" id="btn1" class="btn"></a></li>

</ul>
</nav>
<header>
<div class="content">
<h1> About Valorant</h1>
<p>Valorant is a team-based first-person tactical hero shooter set in the near future.Players play as one of a set of Agents, characters based on several countries and cultures around the world.In the main game mode, players are assigned to either the attacking or defending team with each team having five players on it. Agents have unique abilities, each requiring charges, as well as a unique ultimate ability that requires charging through kills, deaths, orbs, or objectives. Every player starts each round with a "classic" pistol and one or more "signature ability" charges.Other weapons and ability charges can be purchased using an in-game economic system that awards money based on the outcome of the previous round, any kills the player is responsible for, and any objectives completed. The game has an assortment of weapons including secondary guns like sidearms and primary guns like submachine guns, shotguns, machine guns, assault rifles and sniper rifles.There are automatic and semi-automatic weapons that each have a unique shooting pattern that has to be controlled by the player to be able to shoot accurately.It currently offers 20 agents to choose from. They are Brimstone, Viper, Omen, Cypher, Sova, Sage, Phoenix, Jett, Raze, Breach, Reyna, Killjoy, Skye, Yoru, Astra, KAY/O, Chamber, Neon, Fade and Harbor. The player will get 5 unlocked agents (Brimstone, Sova, Sage, Phoenix and Jett) and will have to unlock the agents by activating that agent's contract.</p>

</div>
</header>
</div>
</div>
<h1>Your Feedback Matters</h1>
</form>
<h1><% String rname=(String)session.getAttribute("ename");%></h1>
<h1 style=color:black>User:<%=rname%></h1>
<% 
if(request.getParameter("logout") !=null ){
session.invalidate();
response.sendRedirect("Login.jsp");
}

else if(rname==null){
	
	response.sendRedirect("Login.jsp");	
}


%>

<form method="post" action="Comment">

<table>
<tr><td style=color:red;font-size:30px;>Comment:</td>
<td><textarea name="comment" id="comment" rows="4" cols="20"></textarea></td>
</tr>
<tr><td><input type="submit" name="com" value="Comment" id="btn"></td></tr>
</table>
</form>


<%

if(rname!=null){

Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/blogwebsite","root","12345");
Statement stmt=con.createStatement();
ResultSet rs=stmt.executeQuery("select *from comments");
out.print("<table border='1'><tr><th>Eid</th><th>Ename</th><th>Comment</th><tr>");
while(rs.next()){
	out.print("<td>"+rs.getInt("cid")+"</td>");
	out.print("<td>"+rs.getString("cname")+"</td>");
	out.print("<td>"+rs.getString("comment")+"</td>");

	out.print("</tr>");
}
out.print("</table>");	
}
%>

</body>
</html>