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
       <script>alert('Request Sent to Bank...!');</script>
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
    <p>
	   
    <%@page import="java.sql.*"%>
    <%@ include file="connect.jsp" %>
    <%@ page session="true" %>
	
    <%
    String s1 = null;
    String s2 = null;
    String s3 = null;
    String s4 = null;
    String s5 = null;
    int j=0, m=0, rank=0;
    try 
    {
    ArrayList al=new ArrayList();

    String sql2="select * from cart"; 
    Statement st2=connection.createStatement();
    ResultSet rs2=st2.executeQuery(sql2);
    while(rs2.next())
    {
		
            s1=rs2.getString(3);
            s2=rs2.getString(4);
            s3=rs2.getString(5);
            s4=rs2.getString(6);
            s5=rs2.getString(7);


            al.add(s1);

            if(m==0){
            %>

            <center>  <h1><font color="red">Cart Products</font></h1> </center>
         
        <center> <table width="501" border="1.5" align="left"  cellpadding="0" cellspacing="0"  >
        <tr>
        <td  width="101" valign="baseline" height="0" style="color: #2c83b0;"><div align="center">
        <strong> Image </strong></div></td>
        <td  width="93" valign="baseline" height="0" style="color: #2c83b0;"><div align="center">
        <strong>Product Name </strong></div></td>
        <td  width="115" valign="baseline" height="0" style="color: #2c83b0;"><div align="center">
        <strong>Price </strong></div></td>
        <td  width="115" valign="baseline" height="0" style="color: #2c83b0;"><div align="center">
        <strong>Brand </strong></div></td>
        <td  width="115" valign="baseline" height="0" style="color: #2c83b0;"><div align="center">
        <strong>Purchase </strong></div></td>    

        </tr>
                    <%}%>
        <tr>
        <td width="101"><img height="100" width="100" src="Product Images\<%=s3%>"></img></td>
        <td  width="93" height="110" align="center" valign="middle"><div align="center"><font color="black"><%out.println(s1);%></div></td>
        <td  width="93" height="110" align="center" valign="middle"><div align="center"><font color="black"><%out.println(s2);%></div></td>
        <td  width="115" height="110" align="center" valign="middle"><div align="center"><font color="black"><%out.println(s4);%></div></td>
       
        <td  width="115" height="110" align="center" valign="middle">
        <div align="center"><a href="purchase.jsp?pname=<%=s1%>&price=<%=s2%>&image=<%=s3%>&brand=<%=s4%>&provider=<%=s5%>"><button type="button">Purchase</button></a></div>
        </td>
        
        </tr> 

            </form>
            <%m=2;
            }

            if(al.isEmpty())
            {
            %>
            <br/><br/><br/><br/><br/><br/>
            
            <center><h2 class="style6"><font color="red">Sorry..!! Nothing To Display </font></h2></center>
            <%}
             String msg=(String)application.getAttribute("msg");
             if(msg!=null){
             %><h3 class="style8"> <%=msg%></h3> 
              <%
             application.removeAttribute("msg");
            }
             %>
             
           
             
           <%
            }
            catch(Exception e)
            {
                    out.println(e.getMessage());
            }
            %>
        </table> </center>
		  </p>
    <div class="clearer"></div>
    </div>
    
    </div>
</body>
</html>
