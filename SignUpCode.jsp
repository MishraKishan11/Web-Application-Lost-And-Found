<%@page import="java.sql.Connection"%> 
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>

<%
String Name = request.getParameter("name");
String Uid = request.getParameter("UserId");
String Password = request.getParameter("Enterpass");
String conPassword = request.getParameter("confirmpass");
String country = request.getParameter("country");
String State = request.getParameter("state");
String City = request.getParameter("city");
String Mail = request.getParameter("mail");
String Contact = request.getParameter("contact");
String pin = request.getParameter("pin");
String Address = request.getParameter("address");
String Aadhar = request.getParameter("aadhar");

Class.forName("com.mysql.jdbc.Driver");
 Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/userdetails","root","kishan");
 PreparedStatement st =con.prepareStatement("insert into userdetails values(?,?,?,?,?,?,?,?,?,?,?,?)");
           
        st.setString(1,Name);
        st.setString(2,Uid);
        st.setString(3,Password);          
        st.setString(4,conPassword);
        st.setString(5,country);          
        st.setString(6,State);
        st.setString(7,City);          
        st.setString(8,Mail);
        st.setString(9,Contact);          
        st.setString(10,pin);
        st.setString(11,Address);     
        st.setString(12,Aadhar);
        
        st.executeUpdate();
        
        response.sendRedirect("LogIn.jsp");
         con.close();
            
                  %>


