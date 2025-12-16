
     
        <%@page import="java.sql.*"%>
        <%@ include file="connect.jsp" %>
        <%@ page session="true" %>
        

        <%
        
        String productname = request.getParameter("pname");
        
        PreparedStatement ps=connection.prepareStatement("delete from products where productname = '"+productname+"'");
        ps.executeUpdate();
        
        response.sendRedirect("viewproducts.jsp?msg=sucess");
        
  %>
        
        