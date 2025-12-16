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
    <script>alert('Approved & Sent to Admin...!');</script>
    <%}%> 
    <%
    if (request.getParameter("m1") != null) {%>
    <script>alert('Insufficient Funds...!');</script>
    <%}%>
    
    
    <div id="page">
    <div id="container">
    <div id="header"><h1>EPICS: A Framework for Enforcing Security Policies in Composite Web Services</h1>
    <div class="clearer"></div>
    </div>
    <!--/end #header -->
    <div id="navigation-row">
      <ul id="navigation">
        <li><a href="bankhome.jsp" class="active">Home</a></li>
        <li><a href="#">Bank</a></li>
        <li><a href="bank.jsp">Logout</a></li>
        
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
          <div class="box-title">Bank Menu
           <div class="icon"><img src="images/title-icon-services.png" alt="" /></div>
          </div>
          <div class="box-content fixed-height">
            <ul class="services">
              <li><a href="bankhome.jsp"> Home</a></li>
              <li><a href="userrequests.jsp">User Requests & Approve</a></li>
              <li><a href="bank.jsp">Logout</a></li>
            </ul>
          </div>
        </div>
      </div>
        <%@ include file="connect.jsp" %>
        <%
        String sql2="select * from purchasedproducts where bankstatus = 'Pending' "; 
	Statement st2=connection.createStatement();
	ResultSet rs1=st2.executeQuery(sql2);
	%>
        
         <center>
        <h2><font color="black" size="5"> Payment Requests</font></h2>
        <br/>
        <style>
            td{
                text-align: center;
            }
            
        </style>
        <table border="2" width="60%">

        <tr style="background-color: chocolate">
        <th><font color="white">User Name</th>
        <th><font color="white">Product Name</th>
        <th><font color="white">Price</th>
        <th><font color="white">Status</th>
        <th><font color="white">Verify & Approve</th>

        </tr>

        <%     while (rs1.next()) {
        %>

         <tr>
         <td><font color="black"><%=rs1.getString(2)%></td>
         <td><font color="black"><%=rs1.getString(3)%></td>
         <td><font color="black"><%=rs1.getString(4)%></td>
         <td><font color="black"><%=rs1.getString(8)%></td>
         <td><a href="verify.jsp?id=<%=rs1.getString(1)%>&uname=<%=rs1.getString(2)%>&price=<%=rs1.getString(4)%>&date=<%=rs1.getString("dt")%>"><font color="red"> Verify & Approve </font></a></td>
         </tr>
            <%
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
