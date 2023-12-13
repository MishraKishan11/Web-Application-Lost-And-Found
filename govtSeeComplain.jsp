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
    font-size: 40px;
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
    color: white;
    border: 3px solid white;
    margin-right: 850px;
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
    border: 2px solid white;
    margin-right: 850px;
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
	border-bottom: 3px solid white;
	box-shadow: 2px 0px 5px grey;
	display :flex;
	justify-content:  space-around;
	align-items: center;
}

   .table{
            color: black;
        }
        .comrow{
          background:white;
          color:black ;
          
          
        }
        .comatable{
            color:white;
            margin-top: 100px;
            padding: 20px 20px;
            gap: 10px;
            background:rgba(118,234,228,0.15);
        }
        .comtable1{
            background: antiquewhite;
        }
        .delcomplain{
            margin-bottom: 10px;
            margin-left: 500px;
            border: 5px solid grey;
            border: 5px solid brown;
             width: 23%;
            height: 20%;
              position: relative;
              color: white;
        }
        .dtcom{
            color: white;
            
        }
</style>
   <body background="family.jpeg" >



        <nav>  

            <div class ="Logo">LOST & FOUND
            </div>
            <div class="menu">
                <a href="UserPage.jsp">HOME</a>
                <a href="govtSeeComplain.jsp">SEE-MISSING-COMPLAIN</a>
             
               
                <a href ="govtSeeReport.jsp">SEE-REPORT</a>
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
            PreparedStatement st = con.prepareStatement("select * from complaintable");

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
                list11.add(rs.getString(11));
               
            }
        %>
    </div>
    <br> <br>
    <table width="100%" align="center" cellspacing="20" border="5px solid blue;"class="comtable" >
        <tr align="center">
            <td colspan="11" style="color: black;font-size:15px;font-family:arial;background-color:white;border-radius:200px">COMPLAIN TABLE</td>
        </tr>
        <tr class="comrow" >
            <td class  ="comtable">Number</td>
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
    <td class="dtcom"><%=list1.get(i)%></td>
    <td class="dtcom"><%=list2.get(i)%></td>
    <td class="dtcom"><%=list3.get(i)%></td>
    <td class="dtcom"><%=list4.get(i)%></td>
    <td class="dtcom"><%=list5.get(i)%></td>
    <td class="dtcom"><%=list6.get(i)%></td>
    <td class="dtcom"><%=list7.get(i)%></td>
    <td class="dtcom"><%=list8.get(i)%></td>
     <td class="dtcom"><%=list9.get(i)%></td>
    <td class="dtcom"><%=list10.get(i)%></td>
     <td class="dtcom"><%=list11.get(i)%></td>
    
    </tr>
    <%  }%>
    
    <div class="delcomplain" align="center" >
    <h1  >Delete Complain</h1>
    <form action="DeleteCode.jsp">
        <select name ="delete" align="center">
        <%for(int i=0;i<list1.size();i++)
        {%>
        <option align="center"><%=list1.get(i)%></option>
        <%}%>
    </select>
    <input type="submit" value="Delete" align="center">
    </div>
</body> 
</html>

