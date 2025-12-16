<%@page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page session="true" %>

    <%              
        String id = request.getParameter("id");
        String username = request.getParameter("username");
        String pname = request.getParameter("pname");
        String date = request.getParameter("date");
        try {

        Statement st=connection.createStatement();
        int j = st.executeUpdate("update purchasedproducts set status='Provider' where id='"+id+"' ");
        if(j!=0)
        {
            response.sendRedirect("approvedpayments.jsp?msg=success");
        }

        else {
            out.println(" failed");
        }
        } catch (Exception e) {
        e.printStackTrace();
        }

        %>