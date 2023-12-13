<%@page import ="java.sql.Connection"%>
<%@page import ="java.sql.DriverManager"%>
<%@page import ="java.sql.PreparedStatement"%>
<%@page import ="java.sql.ResultSet"%>

   <% 
       String uid = request.getParameter("id");
String password = request.getParameter("pass");
String c =request.getParameter("post");
 Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/log_in","root","kishan");
            PreparedStatement st =con.prepareStatement("select * from adminlogin where UserId=? and Password =?");
            st.setString(1,uid);          
            st.setString(2,password);
            
            ResultSet rs =st.executeQuery();
            if(rs.next())
            {
             session.setAttribute("CALL",uid);
            String post = rs.getString(3);
           if(post.equalsIgnoreCase("admin"))
           response.sendRedirect("adminpage.jsp");
             if(post.equalsIgnoreCase("govtuser"))
           response.sendRedirect("govtpage.jsp");
            if(post.equalsIgnoreCase("operator"))
           response.sendRedirect("oppage.jsp");
     }
   
        else{
    out.println("Invalid Password");
}
                  %>
        