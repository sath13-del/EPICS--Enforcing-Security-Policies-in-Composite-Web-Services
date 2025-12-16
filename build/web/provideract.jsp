<%@page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page session="true" %>
<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");
   
    try{
       
      
      String query1="select * from provider where username='"+username+"' and password='"+password+"'"; 
      Statement st1=connection.createStatement();
      ResultSet rs=st1.executeQuery(query1);
      
	if(rs.next())
        {
         
         session.setAttribute("user",username);
            
         response.sendRedirect("providerhome.jsp?msg=success");
        }
       else 
        {
        response.sendRedirect("provider.jsp?m1=Login Failed");
        }
	}
    
        catch(Exception e)
        {
        System.out.println("Error in useract"+e.getMessage());
        }
%>