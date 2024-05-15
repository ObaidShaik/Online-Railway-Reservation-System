
<%@include file="chk.jsp" %>
<%@page import="java.sql.*,mypack.*"%>
<%
         String btn = request.getParameter("B1");
        if(btn!=null && btn.equals("Index")) {
            response.sendRedirect("Index.jsp");
            return;
        }
         if(btn!=null && btn.equals("GoToBank")) {
            response.sendRedirect("Bankuserlogin.jsp");
            return;
        }
        
        String name = request.getParameter("name");
        String age = request.getParameter("age");
        String gender = request.getParameter("gender");
        String trainname = request.getParameter("trainname");
        String trainno = request.getParameter("trainno");
        String quota = request.getParameter("quota");
        String mobile = request.getParameter("mobile");
       
       

        try {
            Statement st = MyCon.getStatement();
            String q = "insert into Ticket(name,age,gender,trainname,trainno,quota,mobile) values ('" + name + "','" + age + "','" + gender + "','" + trainname + "','" + trainno + "','" + quota + "','" + mobile + "')";
            st.executeUpdate(q);
            

            
          out.println("Record saved"); 
          response.sendRedirect("BkTicket.jsp");
        } catch (Exception ex) {
            ex.printStackTrace();
            out.println(ex);
        }

        
       
%>
<html>
    <head>
    </head>
        <body>
            
            </body>
</html>
        
      