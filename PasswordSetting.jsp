<%@include  file="SecurityGaurd.jsp" %>

        
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
    <form action ="PasswordSettingCode.jsp">
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
         <tr Align ="center">
            <td colspan="2" class="labeltheme">Enter Password</td>
        </tr>
          <tr Align ="center">
              <td colspan="2"><input type="password" PLACEHOLDER ="password" class ="texttheme" name="def"></td>
        </tr>  
                <tr Align ="center">
            <td colspan="2" class="labeltheme">Enter New Password</td>
        </tr>
          <tr Align ="center">
              <td colspan="2"><input type="password" PLACEHOLDER ="newpassword" class ="texttheme" name="newpass"></td>
        </tr>  
                <tr Align ="center">
            <td colspan="2" class="labeltheme">Confirm New Password</td>
        </tr>
          <tr Align ="center">
              <td colspan="2"><input type="password" PLACEHOLDER ="cnfmpassword" class ="texttheme" name="cnfNewpass"></td>
        </tr>  
        <tr ALIGN ="CENTER">
            <td colspan ="2"><input type="submit" value="SignIn" class="SignIn" name="SignIn_Button2">
            </td>
        </tr>
      
    </table>

    </form>
</div>
</body>
</html>

