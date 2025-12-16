<%@page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page session="true" %>

            <%

            String username = request.getParameter("username"); 
            int amount = Integer.parseInt(request.getParameter("amount"));
             try{

            String sql="SELECT amount FROM accountdetails where username='"+username+"' ";
            Statement stmt = connection.createStatement();
            ResultSet rs =stmt.executeQuery(sql); 
            int amount1 = 0;
            int total = 0;
            if(rs.next()){
            amount1 = rs.getInt("amount");
            total = amount1+amount;
            
            PreparedStatement ps2=connection.prepareStatement("update accountdetails set amount='"+total+"' where username = '"+username+"' ");
        
            ps2.executeUpdate();
            }        

         
      response.sendRedirect("addmoney.jsp?m1=sucess");
  
  %>
    <%

                }
               
        
        catch(Exception e)
        {
                out.println(e.getMessage());
        }
        %>