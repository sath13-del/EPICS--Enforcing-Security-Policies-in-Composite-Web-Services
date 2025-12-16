
     
        <%@page import="java.sql.*"%>
        <%@ include file="connect.jsp" %>
        <%@ page session="true" %>
        <%@page	import="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>
        <%@page import="javax.crypto.SecretKey"%>
        <%@page import="javax.crypto.KeyGenerator"%>
        <%@page import="epics.encryption"%>

        <%
        
        String user=session.getAttribute("user").toString();
        String productname1 = request.getParameter("pname");
        String image = request.getParameter("image");
        String price1 = request.getParameter("price");
        int price =Integer.parseInt(price1);
        String brand1 = request.getParameter("brand");
        String provider = request.getParameter("provider");
        
        KeyGenerator keyGen = KeyGenerator.getInstance("AES");
        keyGen.init(128);
        SecretKey secretKey = keyGen.generateKey();
        String productname = new encryption().encrypt(productname1, secretKey);
        String brand = new encryption().encrypt(brand1, secretKey);
        
        String dt=null;
        Date dNow = new Date( );
        SimpleDateFormat date2 = new SimpleDateFormat("yyyy:mm:dd hh:mm:ss");
        dt = date2.format(dNow);
              
        PreparedStatement ps1=connection.prepareStatement("insert into purchasedproducts (username,productname,price,dt,image,brand,provider,pname) values ('"+user+"','"+productname+"','"+price+"','"+dt+"','"+image+"','"+brand+"','"+provider+"','"+productname1+"')");
        ps1.executeUpdate();
              
        PreparedStatement ps=connection.prepareStatement("delete from cart where productname = '"+productname+"' and username = '"+user+"'");
        ps.executeUpdate();
        
        response.sendRedirect("viewcart.jsp?msg=sucess");
       
       
  %>
        
        