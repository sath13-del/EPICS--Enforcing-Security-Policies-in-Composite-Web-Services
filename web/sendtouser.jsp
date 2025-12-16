<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>E-Commerce Using Payment Gateway</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" type="text/css" href="css/styles.css" />
<script type="text/javascript" src="js/jquery-1.5.2.min.js"></script>
<script type="text/javascript" src="js/jquery.cycle.all.min.js"></script>
<script type="text/javascript" src="js/functions.js"></script>
</head>
<body>
    <%
    if (request.getParameter("msg") != null) {%>
    <script>alert('Product Shipped & Mail Sent to User..!');</script>
    <%}%>
    
    <div id="page">
    <div id="container">
    <div id="header"><h1>Ecommerce Using Payment Gateway</h1>
    <div class="clearer"></div>
    </div>

    <%
    String user = session.getAttribute("user").toString();
    %>  

    <div id="navigation-row">
    <ul id="navigation">
    <li><a href="providerhome.jsp" class="active">Home</a></li>
    <li><a href="#"><%=user%></a></li>
    <li><a href="provider.jsp">Logout</a></li>
    </ul>

    <div class="clearer"></div>
    </div>

    <div id="image-slider"> <a href="#" class="prev"><img src="images/arrow-left.png" alt="" /></a>
    <ul>
    <li><img src="images/slide1.jpg" alt="" /></li>
    <li><img src="images/slide2.jpg" alt="" /></li>
    <li><img src="images/slide3.jpg" alt="" /></li>
    </ul>
    <a href="#" class="next"><img src="images/arrow-right.png" alt="" /></a> </div>

    <div id="content">
    <div class="column-1-3">
    <div class="white-box">
    <div class="box-title"> Provider Menu
    <div class="icon"><img src="images/title-icon-services.png" alt="" /></div>
    </div>
    <div class="box-content fixed-height">
    <ul class="services">
    <li><a href="providerhome.jsp">Home</a></li>
    <li><a href="addproducts.jsp">Add Products</a></li>
    <li><a href="viewproducts.jsp">View Products</a></li>
    <li><a href="sendtouser.jsp">Send to User</a></li>
    <li><a href="provider.jsp">Logout</a></li>
    </ul>
    </div>
    </div>
    </div>
   
     <%@ include file="connect.jsp" %>
    <%
        String sql2="select * from purchasedproducts where status = 'Provider' and provider = '"+user+"' "; 
	Statement st2=connection.createStatement();
	ResultSet rs1=st2.executeQuery(sql2);
	%>
        
         <center>
        <h2><font color="black" size="5">Approved Payments</font></h2>
        <br/>
        <style>
            td{
                text-align: center;
                color: black;
            }
            
        </style>
        <table border="2" width="60%">

        <tr style="background-color: chocolate">
        <th><font color="white">User Name</th>
        <th><font color="white">Product Name</th>
        <th><font color="white">Price</th>
        <th><font color="white">Payment Status</th>
        <th><font color="white">Ship to User</th>

        </tr>

        <%     while (rs1.next()) {
        %>

         <tr>
         <td><a href="userdetails.jsp?uname=<%=rs1.getString(2)%>"><font color="black"> <%=rs1.getString(2)%> </font></a></td>
         <td><%=rs1.getString("pname")%></td>
         <td><%=rs1.getString(4)%></td>
         <td><%=rs1.getString(8)%></td>
         <td><a href="shiptouser.jsp?id=<%=rs1.getString(1)%>&username=<%=rs1.getString(2)%>&pname=<%=rs1.getString(2)%>&date=<%=rs1.getString("dt")%>"><font color="red">Ship to User </font></a></td>
         </tr>
        <%
            }
        %>
        </table></center>
        <br/><br/><br/><br/>
        
    <div class="clearer"></div>
    </div>
    
    </div>
</body>
</html>
