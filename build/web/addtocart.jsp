
     
        <%@page import="java.sql.*"%>
        <%@ include file="connect.jsp" %>
        <%@ page session="true" %>
        

        <%
        String user=session.getAttribute("user").toString();
        String productname = request.getParameter("productname");
        String price = request.getParameter("price");
        String image = request.getParameter("image");
        String brand = request.getParameter("brand");
        String provider = request.getParameter("provider");
        
        
        PreparedStatement ps1=connection.prepareStatement("insert into cart (username,productname,price,image,brand,provider) values ('"+user+"','"+productname+"','"+price+"','"+image+"','"+brand+"','"+provider+"')");
        ps1.executeUpdate();
        
        
        response.sendRedirect("searchproducts.jsp?m1=sucess");
        
  %>
        

        
        