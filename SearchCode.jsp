<%@page import ="java.sql.Connection"%>
<%@page import ="java.sql.DriverManager"%>
<%@page import ="java.sql.PreparedStatement"%>
<%@page import ="java.sql.ResultSet"%>

   <% 
       String Name = request.getParameter("name");
 Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/userdetails","root","kishan");
            PreparedStatement st =con.prepareStatement("select * from complaintable where Name=? ");
            st.setString(1,Name);           
                 ResultSet rs = st.executeQuery();
        
    response.sendRedirect("searchredirecct.jsp");
                  %>
        