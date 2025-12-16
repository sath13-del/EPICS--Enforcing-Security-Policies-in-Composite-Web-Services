<%@page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page session="true" %>

    <%              
        String pname = request.getParameter("pname");
        String provider = request.getParameter("provider");
        try {

        Statement st=connection.createStatement();
        int j = st.executeUpdate("update products set adminstatus='Approved' where productname='"+pname+"' and provider = '"+provider+"'");
        if(j!=0)
        {
          response.sendRedirect("productrequest.jsp?msg=success");
        }

        else {
            out.println(" failed");
        }
        } catch (Exception e) {
        e.printStackTrace();
        }

        %>