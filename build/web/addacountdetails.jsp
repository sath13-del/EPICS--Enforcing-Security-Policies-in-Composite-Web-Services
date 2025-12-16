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
    <script>alert('Account Created Successfully..!');</script>
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
    
    <p align="justify">
    <center><p><font color="red" size="5"> User Bank Account Creation</font></p></center><br/>
    <form action="addacountdetailsact.jsp" method="post">
    <center><table width="421">
    <tr>
    <td width="91" height="43"><font color="black">User Name </td>
    <td width="218"><input id="username" name="username" value="<%=user%>" readonly="" /></td>
    </tr>
    <tr>
    <td height="43"><font color="black">Branch </td>
    <td width="218"><input type="text" id="branch" name="branch" required="" placeholder="Branch" /></td>
    </tr>
    <tr>
    <td height="43"><font color="black"> Account Number</td>
    <td><input id="email" name="accno" required="" placeholder="Account Number"/></td>
    </tr>

    <tr>
    <td height="43"><font color="black"> Card Number</td>
    <td><input id="email" name="cardno" required="" placeholder="Card Number"/></td>
    </tr>
    <tr>
    <td height="43"><font color="black">Mobile Number </td>
    <td><input id="mobile" name="mobile" required="" placeholder="Mobile Number"/></td>
    </tr>
    <tr>
    <td height="43"><font color="black">Amount </td>
    <td><input id="amoount" name="amount" required="" placeholder="Amount"/></td>
    </tr>

    <tr>
    <td height="43" rowspan="3">
    <p>&nbsp;</p></td>
    <td align="left" valign="middle"> <p>&nbsp;
    </p>
    <p>
    <input name="submit" type="submit" value="Create Account" />
    </p>
    <div align="right">
    </div></td>
    </tr>
    </table>
    </form>
    </p>
    
    <div class="clearer"></div>
    </div>
    
    </div>
</body>
</html>
