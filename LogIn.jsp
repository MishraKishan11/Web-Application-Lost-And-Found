<%@page import ="java.sql.Connection"%>
<%@page import ="java.sql.DriverManager"%>
<%@page import ="java.sql.PreparedStatement"%>
<%@page import ="java.sql.ResultSet"%>
   <% 
       int RESULT =0;
       String signUp = request.getParameter("SignUp_Button");
       String signIn = request.getParameter("SignIn_Button2");
       if(signUp!=null && signUp.equalsIgnoreCase("SIGNUP"))
       {
                 response.sendRedirect("SignUp.jsp");
                 }
       if(signIn!=null && signIn.equalsIgnoreCase("SIGNIN"))
       {
       String uid = request.getParameter("abc");
String password = request.getParameter("def");
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
     <a href ="">CONTACT</a>
</div>
    </nav> 

<div class="logdiv"style="width:20%;height:500px;background-color:rgba(255,255,255,0.3);border:inset;border-color: white;margin-top:50px;margin-left:500px">
    <form action ="">
    <table  border ="0" width="100%" cellspacing="10" cellpadding="">
          <tr ALIGN ="center">
              <td align = center colspan ="2" class="labeltheme"><img src="login.png" width="200px; height=200px"></td>
        </tr>
        <tr ALIGN ="CENTER">
            <td colspan ="2"><input type="submit" value="SignUp" class="SignUp" name="SignUp_Button">
            </td>
        </tr>
        
           
        <tr Align ="center">
            <td colspan="2"class="labeltheme">Enter Id</td>
        </tr>
          <tr Align ="center">
              <td colspan="2" ><input type="text" PLACEHOLDER ="eg:kishan3422" class ="texttheme" name="abc"></td>
        </tr>
         <tr Align ="center">
            <td colspan="2" class="labeltheme">Enter Password</td>
        </tr>
          <tr Align ="center">
              <td colspan="2"><input type="password" PLACEHOLDER ="password" class ="texttheme" name="def"></td>
        </tr>  
        <tr ALIGN ="CENTER">
            <td colspan ="2"><input type="submit" value="SignIn" class="SignIn" name="SignIn_Button2">
            </td>
        </tr>
        <tr align="center" style="font-style: bold;">
         <td>
                <%
                    if(signIn!=null&& RESULT==1)
                    {
                    %>
                    <font color="darkred">invalid id/password</font>
                <%}
                 %>
            </td>
        </tr>
    </table>

    </form>
</div>
</body>
</html>

