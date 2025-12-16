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
    <li><a href="userhome.jsp" class="active">Home</a></li>
    <li><a href="#"><%=user%></a></li>
    <li><a href="user.jsp">Logout</a></li>
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
    <div class="box-title"> Menu
    <div class="icon"><img src="images/title-icon-services.png" alt="" /></div>
    </div>
    <div class="box-content fixed-height">
    <ul class="services">
    <li><a href="userhome.jsp">Home</a></li>
    <li><a href="managebankaccount.jsp">Manage Account</a></li>
    <li><a href="searchproducts.jsp">Search Products</a></li>
    <li><a href="viewcart.jsp">View Cart</a></li>
    <li><a href="myorders.jsp">My Orders</a></li>
    <li><a href="user.jsp">Logout</a></li>
    </ul>
    </div>
    </div>
    </div>
    <%@ include file="connect.jsp" %>
    <%
        String sql2="select * from purchasedproducts where username = '"+user+"' "; 
	Statement st2=connection.createStatement();
	ResultSet rs1=st2.executeQuery(sql2);
	%>
        
         <center>
        <h2><font color="black" size="5">My Orders</font></h2>
        <br/>
        <style>
            td{
                text-align: center;
                color: black;
            }
            
        </style>
        <table border="2" width="65%">

        <tr style="background-color: chocolate">
        <th><font color="white">Product Name</th>
        <th><font color="white">Price</th>
        <th><font color="white">Date</th>
        <th><font color="white">Brand</th>
        <th><font color="white">Payment Status</th>
        <th><font color="white">Status</th>

        </tr>

        <%     while (rs1.next()) {
        %>

         <tr>
         <td><%=rs1.getString(2)%></td>
         <td><%=rs1.getString(3)%></td>
         <td><%=rs1.getString(4)%></td>
         <td><%=rs1.getString(6)%></td>
         <td><%=rs1.getString(7)%></td>
         <td><%=rs1.getString(8)%></td>
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
