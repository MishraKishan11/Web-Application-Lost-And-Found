<%@page import ="java.sql.Connection"%>
<%@page import ="java.sql.DriverManager"%>
<%@page import ="java.sql.PreparedStatement"%>
<%@page import ="java.sql.ResultSet"%>

   <% 
       String del = request.getParameter("delete");


 Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/userdetails","root","kishan");
            PreparedStatement st =con.prepareStatement("delete from reporttable where report_no=? ");
            st.setString(1,del);          
            st.executeUpdate();
        
    response.sendRedirect("govtSeeReport.jsp");
                  %>
        