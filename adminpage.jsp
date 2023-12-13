<%@include  file="SecurityGaurd.jsp" %>

<html>
    <style>
	.tdtheme{
	text-transform:uppercase;
	font-size:15px;
	font-family:sans-serif;
	color:black;
        align-items: centre;
	}

.tdtheme1{
 width:20px;
 height:10px;
text-transform:uppercase;
font-size:20px;
font-family:sans-serif;
}
.tdtheme:hover{
background-color:white;
border-radius:20px;

}
.LOGO{
    font-size: 40px;
    font-family: sans-serif;
    color: black;         
}
.Login
{
    font-family: sans-serif;
    font-size:10px;
    padding:80px;   
}
.msg{
    color: white;
    border: 3px solid white;
    margin-right: 850px;
    margin-top: 40px;   
}
.current{
text-transform:uppercase;
font-size:15x;
font-family:sans-serif;
background-color:white;
border-radius:20px;
}
.left{
    width: "30%";
    border: 2px solid grey;
    margin-right: 850px;
    margin-top: 50px;
}
.menu a{
    font-size: 15px;
    color: black;
   
    font-weight: bold;
    padding: 20px 20px;
    margin: 5px;
    text-decoration: none;
}
nav{
    	width: 100%;
	height: 80px;
	border-bottom: 3px solid grey;
	box-shadow: 2px 0px 5px grey;
	display :flex;
	justify-content:  space-around;
	align-items: center;
}
body{
    background:family;
}
</style>
<body > 
<nav>  
<div class ="Logo">LOST & FOUND
</div>
<div class="menu">
    
    <a href="adminpage.jsp">HOME</a>
       <a href="govtSeeComplain.jsp">SEE-MISSING-REPORT</a>
    <a href ="">SERVICES</a>
     <a href ="govtSeeReport.jsp">SEE-REPORT</a>
     <a href ="">MAIL</a>
     <a href ="destroysession.jsp">SIGN-OUT</a>
</div>
    </nav> 
</body>
</html>

