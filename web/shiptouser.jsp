<%@page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page session="true" %>
<%@page import="epic.Mail"%>
    <%              
        String id = request.getParameter("id");
        String username = request.getParameter("username");
        String pname = request.getParameter("pname");
        String date = request.getParameter("date");
        String email = "null";
        String query = "select email from user where username = '"+username+"'";
        Statement st = connection.createStatement();
        ResultSet rs = st.executeQuery(query);
        if(rs.next()){
        email = rs.getString("email");
        System.out.println("email"+email);
        }
        
        
        String aa = "Your order has been shipped and will be deliver soon..";
        try {

        Statement st1=connection.createStatement();
        int j = st1.executeUpdate("update purchasedproducts set status='Shipped' where id='"+id+"'");
        if(j!=0)
        {
            
            Mail m = new Mail();
          String msg ="Product Name:"+pname+"\nMessage:"+aa;
          m.secretMail(msg,email,email);
            response.sendRedirect("sendtouser.jsp?msg=success");
        }

        else {
            out.println(" failed");
        }
        } catch (Exception e) {
        e.printStackTrace();
        }

        %>