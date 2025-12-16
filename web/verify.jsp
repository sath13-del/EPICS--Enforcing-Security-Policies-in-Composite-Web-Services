
     
        <%@page import="java.sql.*"%>
        <%@ include file="connect.jsp" %>
        <%@ page session="true" %>
        

        <%
        
        String id=request.getParameter("id");
        String user = request.getParameter("uname");
        String date = request.getParameter("date");
        int price =Integer.parseInt(request.getParameter("price"));
      
        
        String sql="select amount from accountdetails where username='"+user+"' ";
        Statement stmt = connection.createStatement();
        ResultSet rs =stmt.executeQuery(sql); 
        int amount1 = 0;
        int total = 0;
        if(rs.next()){
        amount1 = rs.getInt("amount");
        
        }
        
        if(price<=amount1) {      
        total = amount1-price;
        
        PreparedStatement ps1=connection.prepareStatement("update accountdetails set amount='"+total+"' where username = '"+user+"' ");
        ps1.executeUpdate();
        
        PreparedStatement ps2=connection.prepareStatement("update purchasedproducts set bankstatus='Approved',status = 'Admin' where id = '"+id+"' ");
        ps2.executeUpdate();
            
        response.sendRedirect("userrequests.jsp?msg=sucess");
        }
        
        else{
        response.sendRedirect("userrequests.jsp?m1=Failed");    
            
        }
  %>
        
        