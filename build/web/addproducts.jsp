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
    <script>alert('Product added Sucessfully..!');</script>
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
    <br/>
    <center>
    <h1><font color="black" >Add Products</font></h1>
    <br/>
    <form name="myform" action="addproductsact.jsp" method="post" id="" >
    <table border="0" >

    <tr><td><font color="black"> Product Name :</td>
    <td><input type="text" name="productname" required="" /></td></tr>

    <tr><td><font color="black"> Description :</td>
    <td><textarea id="description" name="description" rows="3" cols="21" required=""></textarea></td></tr>

    <tr><td><font color="black"> Price :</td>
    <td><input type="text" name="price" required="" /></td></tr>

    <tr><td><font color="black"> Brand / Company :</td>
    <td><input type="text" name="brand" required="" /></td></tr>

    <tr>
    <td height="43"><font color="black">Image : </td>
    <td><font color="black"><input type="file" name="pic" required=""/></td>
    </tr>

    <tr rowspan="2" align="center"><td><br><input type="submit" name="submit" value=" ADD " /></td></tr>
    <tr></tr>      
    </table>
    </form>
    </center>
    
    <div class="clearer"></div>
    </div>
    
    </div>
</body>
</html>
