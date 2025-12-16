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
    <script>alert('Sent to Provider..!');</script>
    <%}%>
<div id="page">
  <div id="container">
    <div id="header"><h1>EPICS: A Framework for Enforcing Security Policies in Composite Web Services</h1>
      <div class="clearer"></div>
    </div>
    <!--/end #header -->
    <div id="navigation-row">
      <ul id="navigation">
        <li><a href="adminhome.jsp" class="active">Home</a></li>
        <li><a href="#">Admin</a></li>
        <li><a href="admin.jsp">Logout</a></li>
        
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
              <li><a href="adminhome.jsp"> Home</a></li>
              <li><a href="viewusers.jsp">View Users & Activate</a></li>
              <li><a href="productrequest.jsp">View Product Requests</a></li>
              <li><a href="approvedpayments.jsp">Approved Payments</a></li>
              <li><a href="admin.jsp">Logout</a></li>
            </ul>
          </div>
        </div>
      </div>
        
        <%@ include file="connect.jsp" %>
    <%
        String sql="select * from purchasedproducts where bankstatus = 'Approved' and status = 'Admin' "; 
	Statement st=connection.createStatement();
	ResultSet rs=st.executeQuery(sql);
        if(rs.next()){
        
        String sql2="select * from purchasedproducts where bankstatus = 'Approved' and status = 'Admin' "; 
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
        <th><font color="white">Product Name</th>
        <th><font color="white">Price</th>
        <th><font color="white">Payment Status</th>
        <th><font color="white">Provider</th>
        <th><font color="white">Send to Provider</th>

        </tr>

        <%     while (rs1.next()) {
        %>

         <tr>
         <td><%=rs1.getString(3)%></td>
         <td><%=rs1.getString(4)%></td>
         <td><%=rs1.getString(8)%></td>
         <td><%=rs1.getString(10)%></td>
         <td><a href="send.jsp?id=<%=rs1.getString(1)%>&username=<%=rs1.getString(2)%>&pname=<%=rs1.getString(3)%>&date=<%=rs1.getString("dt")%>"><font color="red">Send to Provider </font></a></td>
         </tr>
        <%
            }
        }
        else{
            
           out.println("<br><br><br><br><br><br><br><br><br><center><font color='red' size='4'><b>Sorry..!! Nothing To Display</b></font></center>");
        }
        %>
        </table></center>
        <br/><br/><br/><br/>
        
      <div class="clearer"></div>
    </div>
    <!--/end #content -->
    
  <!--/end container -->
</div>
<!--/end #page -->
</html>
