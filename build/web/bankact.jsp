<%

                        try {

                            String username = request.getParameter("username");
                            String password = request.getParameter("password");

                            System.out.println("the username is " + username);
                            System.out.println("the password is " + password);

                            if ((username.equals("bank") ) && (password.equals("bank"))) {

                                response.sendRedirect("bankhome.jsp?msg=success");

                            } else {

                    %>

                    User Details Given for Username : <%=request.getParameter("username")%> is Not Registered/Valid
                    <br>

                        Please Try Again

                        <%
                                }
                            } catch (Exception e) {
                                e.printStackTrace();
                            }

                        %>
