
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
    color: white;
   
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
    background:black;
}
.adlog{
    color: white;
}
</style>
<body >


<nav>  
   
<div class ="Logo">LOST & FOUND
</div>
<div class="menu">
    <a href="">HOME</a>
    <a href ="">SERVICES</a>
     <a href ="">CONTACT</a>
</div>
    </nav> 

<div class="msg">
    <h1> WE WANT KEEP EVERYONE TOGETHER</h1>
    <p> Our Motive is to make every family safe together
        by your help we together can make it possible 
        sign up now and join our org which will make you happy 
        helping others
    </p>
</div>
<div class ="left">
    <form action ="authcode.jsp">
    <table border ="0" width="100%" cellspacing="10" cellpadding="">
          <tr bgcolor ="white" ALIGN ="center">
        <td align = center colspan ="2"  >USER SIGN IN</td>
        </tr>
       
        <tr Align ="center">
            <td colspan="2" class="adlog">Enter Id</td>
        </tr>
          <tr Align ="center">
              <td colspan="2"><input type="text" PLACEHOLDER ="eg:kishan3422" class ="texttheme"  name="id"></td>
        </tr>
         <tr Align ="center">
            <td colspan="2" class="adlog">Enter Password</td>
        </tr>
          <tr Align ="center">
              <td colspan="2"><input type="password" PLACEHOLDER ="password" class ="texttheme"  name="pass"></td>
        </tr>
       
        <tr>
            <td>LEVEL</td>
              <td><select class="textheme" name ="post">
                      <option>POST</option>
                      <option>ADMIN</option>
                      <option>GOVTUSER</option>
                      <option>OPERATOR</option>
              </td>
             
        </tr>
       
         <tr align ="center">
            <td colspan ="2"><input type="submit" value="SignIn" class="Signup">
        </tr>
  
    </table>
    </form>
</div>
</body>
</html>


              
             
