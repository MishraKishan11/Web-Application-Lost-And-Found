<%@page import="java.sql.Connection"%> 
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>

<%
String Name = request.getParameter("name");
String Date = request.getParameter("date");
String Age = request.getParameter("age");
String Gender = request.getParameter("gender");
String City = request.getParameter("city");
String pin = request.getParameter("pin");
String Contact = request.getParameter("contact");
String Address = request.getParameter("address");
String Details = request.getParameter("details");
String PoliceStation =request.getParameter("policestation");

Class.forName("com.mysql.jdbc.Driver");
 Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/userdetails","root","kishan");
 PreparedStatement st =con.prepareStatement("insert into reporttable(Name,date,age,gender,city,pin,contact,address,details,policestation) values(?,?,?,?,?,?,?,?,?,?)");
           
        st.setString(1,Name);
        st.setString(2,Date);          
        st.setString(3,Age);
        st.setString(4,Gender);          
        st.setString(5,City);          
        st.setString(6,pin);
        st.setString(7,Contact);  
        st.setString(8,Address);
         st.setString(9,Details);
        st.setString(10,PoliceStation);
        
        st.executeUpdate();
        
        response.sendRedirect("UserPage.jsp");
         con.close();
            
                  %>


