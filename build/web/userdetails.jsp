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
        <style>
            td{
                text-align: center;
                color: black;
            }
            
        </style>
     <%@ include file="connect.jsp" %>
    <%
        String uname = request.getParameter("uname");
        String sql2="select * from user where username = '"+uname+"' "; 
	Statement st2=connection.createStatement();
	ResultSet rs1=st2.executeQuery(sql2);
        if(rs1.next()){
	%>
        
        
        <p align="justify">
        <center><p><font color="red" size="5"> User Details</font></p></center><br/>
        <form name="myform" action="registeract.jsp" method="post" id="" >
            <center><table width="321" border="2">
        <tr>
        <td width="191" height="43"><font color="black">User Name </td>
        <td width="218"><%=rs1.getString("username")%></td>
        </tr> 
        <tr>
        <td height="43"><font color="black"> Email ID</td>
        <td width="218"><%=rs1.getString("email")%></td>
        </tr>
        <tr>
        <td height="65"><font color="black">Gender</td>
        <td width="218"><%=rs1.getString("gender")%></td>
        </tr>
        <tr>
        <td height="65"><font color="black">Address</td>
        <td width="218"><%=rs1.getString("address")%></td>
        </tr>
        <tr>
        <td height="43"><font color="black">Mobile Number </td>
        <td width="218"><%=rs1.getString("mobile")%></td>
        </tr>
        
        <%}%>        
                
        </table>
        </form>
        </p>
        <br/>
        <center><a href="sendtouser.jsp"><font color="green" size="4">BACK</font></a></center>
        
    <div class="clearer"></div>
    </div>
    
    </div>
</body>
</html>
