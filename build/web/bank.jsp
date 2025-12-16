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
    <div id="header"><h1>EPICS: A Framework for Enforcing Security Policies in Composite Web Services</h1>
      <div class="clearer"></div>
    </div>
    <!--/end #header -->
    <div id="navigation-row">
      <ul id="navigation">
        <li><a href="index.html" class="active">Home</a></li>
        <li><a href="admin.jsp">Admin</a></li>
        <li><a href="user.jsp">User</a></li>
        <li><a href="provider.jsp"> Provider</a></li>
        <li><a href="bank.jsp">Bank</a></li>
        <li><a href="reg.jsp">Registration</a></li>
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
            <li><a href="index.html">Home</a></li>
            <li><a href="admin.jsp">Admin</a></li>
            <li><a href="user.jsp">User</a></li>
            <li><a href="provider.jsp"> Provider</a></li>
            <li><a href="bank.jsp">Bank</a></li>
            <li><a href="reg.jsp">Registration</a></li>
            </ul>
          </div>
        </div>
      </div>
       <center> <h2>Bank Login</h2>
        <br/>
          
        <form name="myform" action="bankact.jsp" method="post">
        <table border="0" >

        <tr><td><font color="black"> UserName</td><td><input type="text" name="username" required="" /></td></tr>
        <tr><td><font color="black">Password</td><td><input type="password" name="password" required="" /></td></tr>
<br>
        <tr rowspan="2" align="center"><td><br><input type="submit" name="submit" value="Login" /></td></tr>
        <tr></tr>      
        </table>
        </form>
        </center>
      <div class="clearer"></div>
    </div>
    <!--/end #content -->
    
  <!--/end container -->
</div>
<!--/end #page -->
</html>
