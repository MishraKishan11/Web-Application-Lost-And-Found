<%@page import ="java.sql.Connection"%>
<%@page import ="java.sql.DriverManager"%>
<%@page import ="java.sql.PreparedStatement"%>
<%@page import ="java.sql.ResultSet"%>

   <% 
       String userid=request.getParameter("abc");
       String oldpass= request.getParameter("def");
        String a= request.getParameter("newpass");
         String b= request.getParameter("cnfNewpass");

 Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/userdetails","root","kishan");
            PreparedStatement st =con.prepareStatement("select * from userdetails where UserName=? and pass=?");
            st.setString(1,userid);
            st.setString(2,oldpass);      
            ResultSet rs =st.executeQuery();
            if(rs.next())
            {
                if(a.equals(b))
                {
                    PreparedStatement st1= con.prepareStatement("update userdetails set pass =? where UserName=?");
                      st1.setString(1,a); 
                      st1.setString(2,userid);
                       st1.executeUpdate();
                       response.sendRedirect("newLogIn.jsp");
                }
                else
                {
                        out.println("new pass and confirm new pass does not match");
                        }
            }
            else
            {
                 out.println("invalid id /password")   ;
                    }
   
                  %>
        