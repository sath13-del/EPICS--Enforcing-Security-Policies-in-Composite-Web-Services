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
       <script>alert('Login Successful..!');</script>
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
      </div><br><br><br><br><br><br><br></br>
        <center><h1>Welcome Admin</h1></center>
        <br><br>
        
      <div class="clearer"></div>
    </div>
    <!--/end #content -->
    
  <!--/end container -->
</div>
<!--/end #page -->
</html>
