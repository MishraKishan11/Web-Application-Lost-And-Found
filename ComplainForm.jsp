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
    font-size: 25px;
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
    color: white;
    border: 3px solid white;
   
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
    width: 43%;
    border-radius: 10%;
   border: 10px solid grey;
    margin-right: 400px;
    margin-top: 20px;
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
    background-repeat: no-repeat;
    height: 100%;

}
.table{
    color: white;
   
}
</style>
<body background="img3.jpg" >



<nav>  
   
<div class ="Logo">LOST & FOUND
</div>
<div class="menu">
      <a href="UserPage.js">HOME</a>
       <a href="seeComplain.jsp">SEE-COMPLAIN</a>
    <a href ="">SERVICES</a>
     <a href ="ComplainForm.jsp">COMPLAIN</a>
     <a href ="Report.jsp">REPORT</a>
 <a href ="seeReport.jsp">SEE-REPORT</a>
     <a href ="">CONTACT</a>
     <a href ="destroysession.jsp">SIGN-OUT</a>
</div>
    </nav> 
    <div class="msg">
    <h1 > WE WANT KEEP EVERYONE TOGETHER</h1>
    <p> Our Motive is to make every family safe together by your help we together can make it possible sign up now and join our org which will make you happy  helping others
    </p>
</div>

<div class ="left">
    <form action="ComplainCode.jsp">
    
        <table border ="0" width="50%" cellspacing="10" cellpadding="" >
          <tr bgcolor ="white" ALIGN ="center">
            <td colspan="4" style="color: white;font-size:15px;font-family:arial;background-color:black;border-radius:200px">MISSING COMPLAIN </td>
        </tr>  
         <tr>
        <td  class="table"Align ="center">Name</td>
        <td><input type="text" PLACEHOLDER ="eg:kishan" class ="texttheme"  name="name"></td>
        <td   class="table">Date</td>
             <td><input type="text" PLACEHOLDER ="user name" class ="texttheme"  name="date"></td>
        </tr>
          <tr bgcolor ="" Align ="center">
            <td class="table">Enter Age</td>
       
      
              <td ><input type="text" PLACEHOLDER ="" class ="texttheme"  name="age"></td>
       
        
               <td  class ="table">Gender of the missing person</td>
        
              <td>
               <select class="textheme" name ="gender"</td>
                      
                <option>Male</option>
                      <option>Female</option>
                      <option>Others</option>
               </select>
              </td>
          <tr bgcolor =""Align ="center">
            <td  class="table">Enter City</td>
    
      
              <td class="table"><input type="text" PLACEHOLDER ="" class ="texttheme"  name="city"></td>
      
      
            <td  class="table">Enter Pin</td>
     
     
              <td ><input type="text" PLACEHOLDER ="" class ="texttheme"  name="pin"></td>
        </tr>
          <tr bgcolor ="" Align ="center">
            <td  class="table">Enter Your Contact Details</td>
        
              <td  ><input type="text" PLACEHOLDER ="" class ="texttheme"  name="contact"></td>
       
            <td  class="table">Address(Where the child got lost)</td>
     
              <td ><input type="textarea" PLACEHOLDER ="" class ="texttheme"  name="address"></td>
        </tr>
          <tr bgcolor ="" Align ="center">
            <td  class="table">Enter Details of founded person </td>

              <td ><input type="textarea" PLACEHOLDER ="" class ="texttheme"  name="details"></td>

            <td class="table">Enter Nearest Police Station</td>

              <td ><input type="text" PLACEHOLDER ="" class ="texttheme"  name="policestation"></td>
        </tr>
        <tr align ="center" ><td class="table" colspan="2"><td><input type ="submit" placeholder="SUBMIT" class="textheme" name="Submit" ></td></tr>
    </table>
    </form>
</div>
</body>
</html>

