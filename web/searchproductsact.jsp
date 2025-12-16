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
    if (request.getParameter("m1") != null) {%>
    <script>alert('Product Added to Cart..!');</script>
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
    <div class="box-title">User Menu
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
    
    <%@page import="java.sql.*"%>
    <%@ include file="connect.jsp" %>
    <%@ page session="true" %>    
        
    
    <center> <h1><font color="red" >Product Details </font></h1> </center>
        <br/>
        
<%
    String pname = request.getParameter("pname");
    String s1,s2,s3,s4,s5,s6;
   int j=0;
    try{
       
    Statement st1 = connection.createStatement();
    ResultSet rs1 = st1.executeQuery("select * from products where productname like '%"+pname+"%' and adminstatus = 'Approved' ");
    while ( rs1.next() )
                    {
                            s1=rs1.getString(1);
                            s2=rs1.getString(5);


                    %>
                 
                    
           <center><table width="501" border="1.5" align="left"  cellpadding="0" cellspacing="0"  >
               
           <tr>
           <td width="96" rowspan="7"><div class="style7" style="margin:10px 13px 10px 13px;" >
           <img height="100" width="100" src="Product Images\<%=s2%>"></img></div></td>
           </tr> 
           
           <tr>
           <td  width="131" valign="middle" height="48" style="color: #00CC99;"><div align="left" class="style8 style7 style14" style="margin-left:20px;">
           <strong><font color="black" >Product Name : </font></strong></div></td>
	   <td  width="166" valign="middle" height="48" ><div align="left" class="style11" style="margin-left:20px;"> 
           <input type="text" name="pname" size="12" readonly="" value="<%out.println(s1);%>"></div></td>
           </tr>
           
           <tr>
           <td  width="131" valign="middle" height="48" style="color: #00CC99;"><div align="left" class="style8 style7 style14" style="margin-left:20px;">
           <strong><font color="black" >View Details : </font></strong></div></td>
	   <td  width="166" valign="middle" height="48" ><div align="left" class="style11" style="margin-left:20px;"> 
           <a href="productdetails.jsp?pname=<%=s1%>"><font color="green">View Details</font></a>
           </div></td>
           </tr>
           <br/>
           <%}%>
            
       
            </table>
      <%
        
        }
        catch(Exception e)
        {
                out.println(e.getMessage());
        }
        %>
    
    <div class="clearer"></div>
    </div>
    
    </div>
</body>
</html>
