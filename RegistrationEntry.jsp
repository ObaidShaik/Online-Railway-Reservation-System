    <%@page import="java.sql.*,mypack.*"%>
<%
        String btn = request.getParameter("B1");
        if(btn!=null && btn.equals("userlogin")) {
            response.sendRedirect("userlogin.jsp");
            return;
        }
       
       
        String unm = request.getParameter("unm");
        String upass = request.getParameter("upass");
        String confirmpass = request.getParameter("confirmpass");
        String address = request.getParameter("address");
        String eid = request.getParameter("eid");
        String ulevel = request.getParameter("ulevel");
		String id = request.getParameter("id");

        try {
            Statement st = MyCon.getStatement();
            String q = "insert into Registration values ('" + unm + "','" + upass + "','" + confirmpass + "','" + address + "','" + eid + "','" + id + "')";
            st.executeUpdate(q);

            //out.println("Record Saved");
            response.sendRedirect("RegEntry.jsp?SUCCESS");
        } catch (Exception ex) {
            ex.printStackTrace();
            out.println(ex);
        }
%>