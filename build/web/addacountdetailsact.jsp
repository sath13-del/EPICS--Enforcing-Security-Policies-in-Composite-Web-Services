<%@page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page session="true" %>
<%
     
     String username = request.getParameter("username"); 
     String branch = request.getParameter("branch");
     String accno = request.getParameter("accno"); 
     String cardno = request.getParameter("cardno");
     String mobile = request.getParameter("mobile");
     String amount = request.getParameter("amount");
     try{

      PreparedStatement ps1=connection.prepareStatement("insert into accountdetails (username,branch,accno,cardno,mobile,amount) values ('"+username+"','"+branch+"','"+accno+"','"+cardno+"','"+mobile+"','"+amount+"')");
      int i=ps1.executeUpdate();
      if(i>0)
      {
      response.sendRedirect("addacountdetails.jsp?msg=sucess");
  }
                                
  %>
    
    <%

                }
               
        
        catch(Exception e)
        {
                out.println(e.getMessage());
        }
        %>