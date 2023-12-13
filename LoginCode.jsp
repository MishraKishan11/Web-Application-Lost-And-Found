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
           response.sendRedirect("UserPage.jsp");
            }
            else
                {
                    RESULT =1;
   // out.println("Invalid Password");
                }
        }
                  %>
        