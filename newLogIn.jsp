

<%@page import ="java.sql.Connection"%>
<%@page import ="java.sql.DriverManager"%>
<%@page import ="java.sql.PreparedStatement"%>
<%@page import ="java.sql.ResultSet"%>
   <% 
       int RESULT =0;
       int RESULT2=0;
       int RESULT3=0;
     
       String signIn = request.getParameter("SignIn_Button2");
      
       if(signIn!=null && signIn.equalsIgnoreCase("SIGNIN"))
       {
       String uid = request.getParameter("abc");
String password = request.getParameter("def");
if(uid.equals(""))
{
RESULT2=1;
   }
else if(password.equals(""))
{
RESULT3=1;
   }
else{
Class.forName("com.mysql.jdbc.Driver");

            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/userdetails","root","kishan");
            PreparedStatement st =con.prepareStatement("select * from userdetails where UserName=? and pass = ?");
            st.setString(1,uid);          
            st.setString(2,password);
            ResultSet rs =st.executeQuery();
            if(rs.next())
            {
           //out.println("Welcome");.
           session.setAttribute("CALL",uid);
           response.sendRedirect("UserPage.jsp");
            }
            else
                {
                    RESULT =1;
   // out.println("Invalid Password");
                }
        }
}
                  %>
                  <html>
                      <link href="Styling.css" rel="stylesheet">
<body background="alone.jpeg" >

<nav>  
   
<div class ="Logo">LOST & FOUND
</div>
<div class="menu">
    <a href="">HOME</a>
    <a href ="">SERVICES</a>
     <a gref="mailto: smoker461122@gmail.com">CONTACT</a>
</div>
    </nav> 
    
    
    <div class="regdiv"style="width:48%;height:600px;background-color:rgba(255,255,255,0.3);border:inset;border-color: white">
        <form action="SignUpCode.jsp" name="frm">
    <table border ="0"  width="100%" cellspacing="10" cellpadding="5">
    
        <tr align="center">
            <td colspan="4" style="color: white;font-size:15px;font-family:arial;background-color:black;border-radius:200px">REGISTERED YOURSELF</td>
        </tr>
        
          <tr>
        <td  class="labeltheme">Name</td>
        <td><input type="text" PLACEHOLDER ="eg:kishan" class ="texttheme"  name="name"></td>
        <td   class="labeltheme">username</td>
             <td><input type="text" PLACEHOLDER ="user name" class ="texttheme"  name="UserId"></td>
        </tr>
        
        
              <tr>    
                  <td align = center  class="labeltheme">Password</td>
             <td ><input type="text" PLACEHOLDER ="enter password" class ="texttheme"  name="Enterpass"></td>
             <td align = center class="labeltheme">Confirm password</td>
             <td ><input type="text" PLACEHOLDER ="enter confirm password" class ="texttheme"  name="confirmpass"></td>
             </tr>
             
         <tr>    
             <td class="labeltheme">country</td>
             <td ><select  class ="texttheme"  name="country">
                     <option>select country</option>
                     <option>india</option>
                     <option>US</option>
                     <option>UK</option>
             </select>
             </td>
             <td class="labeltheme">State</td>
             <td ><select  class ="texttheme"  name="state">
                     <option>select state</option>
                     <option>MP</option>
                     <option>UP</option>
             </select>
             </td>
             </tr>
             
             <tr>
                   <td class="labeltheme">Enter City</td>
              <td  class="table"><input type="text" PLACEHOLDER ="e,g; Indore" class ="texttheme"  name="city"></td>
                <td>
                  <select class="textheme" name ="gender"</td>
                <option>Male</option>
                      <option>Female</option>
                      <option>Others</option>    
                   </select>
             </tr>
         <tr  Align="centre">    
              <td  class="labeltheme"> Email</td>
             <td ><input type="email" PLACEHOLDER ="kishan@11" class ="texttheme"  name="mail"></td>
            <td  class="labeltheme">Enter Contact Number</td>
              <td ><input type="text" PLACEHOLDER ="" class ="texttheme"  name="contact"></td>
        </tr>
        <tr Align="center">
             <td  class="labeltheme">Pin</td>
             <td ><input type="number" PLACEHOLDER ="enter pin" class ="texttheme"  name="pin"></td>
                
                <td area= center  class="labeltheme">Address</td>
             <td ><textarea PLACEHOLDER ="near xyz building,abc square" class ="atextareatheme"  name="address" ></textarea></td>
           
        </tr>
        <tr align="center">
             <td area= center  class="labeltheme">Aadhar Number</td>
             <td ><input type="text" PLACEHOLDER ="aadhar" class ="texttheme"  name="aadhar"></td>
               <td colspan="2" ><input type="Submit" class="buttontheme" value="SUBMIT">
            <input type="reset"  value="CLEAR" class="buttontheme"></td>
        </tr>
    </table>
    </form>
</div>
    
    

 <div style="width:19%;height:540px;background-color:rgba(200,14,25,0.4);margin-top:-600px;margin-left:900px;border-radius: 40px;border:dotted;border-color:white;">
    <form action ="">
        <table  border ="0" width="100%" cellspacing="10" cellpadding="">
          <tr ALIGN ="center">
              <td align = center colspan ="2" class="labeltheme"><img src="login.png" width="200px; height=200px"></td>
        </tr>       
        <tr Align ="center">
            <td colspan="2"class="labeltheme">Enter Id</td>
        </tr>
          <tr Align ="center">
              <td colspan="2" ><input type="text" PLACEHOLDER ="eg:kishan3422" class ="texttheme" name="abc"></td>
        </tr>
      <tr align="center" style="font-style: bold;">
            <td colspan="2">
             <%
  if(signIn!=null&& RESULT2==1)
                    {
                    %>
                    <font color="yellow">id is required</font>
                    <%}%></td>
    </tr>
         <tr Align ="center">
            <td colspan="2" class="labeltheme">Enter Password</td>     
          <tr Align ="center">
              <td colspan="2"><input type="password" PLACEHOLDER ="password" class ="texttheme" name="def"></td>
        </tr>  
        <tr align="center" style="font-style: bold;">
            <td colspan="2">
                       <%
   if(signIn!=null&& RESULT3==1)
                    {
                    %>
                    <font color="yellow">Password is required</font>
                <%}%>
            </td>
        </tr>
        <tr ALIGN ="CENTER">
            <td colspan ="2"><input type="submit" value="SignIn" class="SignIn" name="SignIn_Button2">
            </td>
        </tr>
        
        <tr align="center" style="font-style: bold;">
            <td colspan="2">
       
                <%
                    if(signIn!=null&& RESULT==1)
                    {
                    %>
                    <font color="yellow">invalid id/password</font>
                <%}%>
    </td>
    </tr>
 
    </table>

    </form>
</div>
</div>
    
 <div style="width:13%;height:450px;background-color:rgba(200,14,25,0.4);margin-top:-450px;margin-left:1160px;border-radius: 40px;border:dotted;border-color:white;">
        <<form action="details.jsp">
        <table width="100%">
             <tr>
                 <td style="background-color:rgba(144,14,125,0.4);color:white;width:100%;height: 200px;text-align: center;border-radius: 40px;font-size:30px;font-family: arial"  ><a href="details.jsp">LOST <br>CHILD</a></td>
                </tr>
                <tr>
                    <td style="background-color:rgba(244,14,125,0.4);color:white;width:100%;height: 200px;text-align: center;border-radius: 40px;font-size:30px;font-family: arial" ><a href="details.jsp">FIND <br>CHILD</a></td>
                </tr>
        </table>
        </form>
       </div>
</body>
</html>