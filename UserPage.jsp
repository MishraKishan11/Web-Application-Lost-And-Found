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
    color: white;         
}
.Login
{
    font-family: sans-serif;
    font-size:10px;
    padding:80px;   
}
.msg{
    align-content: center;
    color: darkseagreen;
    border: 3px solid white;
   
    margin-top: 20px;   
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
    margin-left: 850px;
    margin-top: 50px;
}
.menu a{
    font-size: 15px;
    color: white;
   background: black;
   border-radius:80px;
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

.table{
    color: white;
}
a{
    color: white;
    text-decoration: none;
     font-size: 40px;
}
</style>
<body background="walking.jpeg" >



<nav>  
   
<div class ="Logo">LOST & FOUND
</div>
<div class="menu">
    <a href ="UserPage.jsp">HOME</a>
                <a href="seeComplain.jsp">SEE-MISSING-COMPLAIN</a>
                <a href ="PasswordSetting.jsp">SERVICES</a>
                <a href ="seeReport.jsp">SEE-NEW-REPORT</a>        
                <a href ="mailto:smoker461122@gmail.com">CONTACT</a>
                  <a href ="search.jsp">SEARCH</a>
                <a href ="destroysession.jsp">SIGN-OUT</a>
</div>
    </nav> 
    <div class="msg">
    <h1 > WE WANT KEEP EVERYONE TOGETHER</h1>
    <p> Our Motive is to make every family safe together by your help we together can make it possible sign up now and join our org which will make you happy  helping others
    </p>
</div>
 <div style="width:50%;height:100px;margin-top:50px;margin-left:25%;border-radius: 100px;border-color:white;">
        <form action="details.jsp">
        <table width="100%" cellspacing ="80">
             <tr colspan="2">
                 <td width="49%" style="background-color:rgba(118,234,228,0.15);color:white;width:50%;height: 200px;text-align: center;border-radius: 40px;font-size:30px;font-family: arial;border:dotted;"  ><a href="ComplainForm.jsp">MISSING <br>CHILD<br>REPORT</a></td>
               
                 <td width="51%" style="background-color:rgba(244,14,125,0.4);color:white;width:50%;height: 200px;text-align: center;border-radius: 40px;font-size:30px;font-family: arial ;border:dotted;" ><a href="Report.jsp">FOUND <br>CHILD<br>REPORT</a></td>
                </tr>
        </table>
        </form>
       </div>
    
   
</div>
</body>
</html>

