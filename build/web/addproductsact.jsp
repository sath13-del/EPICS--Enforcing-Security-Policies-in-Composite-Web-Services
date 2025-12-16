<%@page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page session="true" %>
    <%
    String user = session.getAttribute("user").toString();
    String productname = request.getParameter("productname"); 
    String description = request.getParameter("description");
    String price = request.getParameter("price");
    String brand = request.getParameter("brand"); 
    String pic = request.getParameter("pic");
    try{

    PreparedStatement ps=connection.prepareStatement("insert into products (productname,description,price,brand,image,provider) values(?,?,?,?,?,?)");
 
    ps.setString(1,productname);
    ps.setString(2,description);
    ps.setString(3,price);
    ps.setString(4,brand);
    ps.setString(5,pic);
    ps.setString(6,user);
       
    int i=ps.executeUpdate();
    if(i>0)
    {
    response.sendRedirect("addproducts.jsp?msg=Added");
    }
    else{
    response.sendRedirect("addproducts.jsp?m1=Failed");    
    }
    %>
    <%
    }
    catch(Exception e)
    {
    out.println(e.getMessage());
    }
    %>