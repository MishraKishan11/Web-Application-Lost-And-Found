<%@include  file="SecurityGaurd.jsp" %>

<html>
    <style>
        .tdtheme{
            text-transform:uppercase;
            font-size:15px;
            font-family:sans-serif;
            color:black;
            align-items: centre;
        }

        .tdtheme1{
            width:20px;
            height:10px;
            text-transform:uppercase;
            font-size:20px;
            font-family:sans-serif;
        }
        .tdtheme:hover{
            background-color:white;
            border-radius:20px;

        }
        .LOGO{
            font-size: 25px;
            font-family: sans-serif;
            color: white;
        }
        .Login
        {
            font-family: sans-serif;
            font-size:10px;
            padding:80px;
        }
        .msg{
            align-content: center;
            color: white;
            border: 3px solid white;

            margin-top: 40px;
        }
        .current{
            text-transform:uppercase;
            font-size:15x;
            font-family:sans-serif;
            background-color:white;
            border-radius:20px;
        }
        .left{
            width: "30%";
            border: 2px solid grey;
            margin-left: 850px;
            margin-top: 50px;
        }
        .menu a{
            font-size: 15px;
            color: white;

            font-weight: bold;
            padding: 20px 20px;
            margin: 5px;
            text-decoration: none;
        }
        nav{
            width: 100%;
            height: 80px;
            border-bottom: 3px solid grey;
            box-shadow: 2px 0px 5px grey;
            display :flex;
            justify-content:  space-around;
            align-items: center;
        }
        .table{
            color: white;
             border: 2px solid white;
        }
        .comrow{
    
          color: black;
          border: 2px solid white;
          
        }
        .comtable{
            color: white;
            border: 2px solid white;
            background-color:rgba(118,234,228,0.15);
            
        }
        body{
            background-repeat: no-repeat;
            height: 100%;
            width: 100%;
        }
    </style>
    <body background="img3.jpg">



        <nav>  

            <div class ="Logo">LOST & FOUND
            </div>
            <div class="menu">
                <a href="UserPage.jsp">HOME</a>
                <a href="seeComplain.jsp">SEE-MISSING-COMPLAIN</a>
                <a href ="">SERVICES</a>
                <a href ="ComplainForm.jsp">COMPLAIN</a>
                <a href ="Report.jsp">REPORT</a>
                <a href ="seeReport.jsp">SEE-REPORT</a>
                <a href ="">CONTACT</a>
               <a href ="newLogIn.jsp">SIGN-OUT</a>
            </div>
        </nav> 
        <%@page import="java.sql.Connection"%> 
        <%@page import="java.sql.DriverManager"%>
        <%@page import="java.sql.ResultSet"%>
        <%@page import="java.sql.PreparedStatement"%>
        <%@page import="java.util.ArrayList"%>
        <%
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/userdetails", "root", "kishan");
            PreparedStatement st = con.prepareStatement("select * from reporttable");

            ResultSet rs = st.executeQuery();
            ArrayList list1 = new ArrayList();
            ArrayList list2 = new ArrayList();
            ArrayList list3 = new ArrayList();
            ArrayList list4 = new ArrayList();
            ArrayList list5 = new ArrayList();
            ArrayList list6 = new ArrayList();
            ArrayList list7 = new ArrayList();
            ArrayList list8 = new ArrayList();
            ArrayList list9 = new ArrayList();
            ArrayList list10 = new ArrayList();
            ArrayList list11 = new ArrayList();

            while (rs.next()) 
            {
                list1.add(rs.getString(1));
                list2.add(rs.getString(2));
                list3.add(rs.getString(3));
                list4.add(rs.getString(4));
                list5.add(rs.getString(5));
                list6.add(rs.getString(6));
                list7.add(rs.getString(7));
                list8.add(rs.getString(8));
                list9.add(rs.getString(9));
                list10.add(rs.getString(10));
               
            }
        %>
    </div>
    <br> <br>
    <table width="100%" align="center" cellspacing="20" border="1px solid white"class="comtable">
         <tr align="center">
            <td colspan="11" style="color: black;font-size:15px;font-family:arial;  background-color:rgba(118,234,228,0.15);border-radius:200px">REPORT TABLE</td>
        </tr>
        <tr class="comrow" >
       
        <td class="comtable">Name</td>
         <td class="comtable">Date</td>        
        <td class="comtable">Age</td.>
        <td class="comtable">Gender</td>
        <td class="comtable">City</td>       
        <td class="comtable">pin</td>
        <td class="comtable">Contact</td>
        <td class="comtable">Address</td>
        <td class="comtable">Details</td>
        <td class="comtable">Police Station</td>
    </tr>
    <% for (int i = 0; i < list1.size(); i++) 
    {
    %>
    <tr>
    <td><%=list1.get(i)%></td>
    <td><%=list2.get(i)%></td>
    <td><%=list3.get(i)%></td>
    <td><%=list4.get(i)%></td>
    <td><%=list5.get(i)%></td>
    <td><%=list6.get(i)%></td>
    <td><%=list7.get(i)%></td>
    <td><%=list8.get(i)%></td>
     <td><%=list9.get(i)%></td>
    <td><%=list10.get(i)%></td>
    
    </tr>
    <%  }%>

</table>
</body>
</html>

