<%@page import="java.sql.*,mypack.*"%>
<%
      
   
    String accountno = request.getParameter("accountno");
    String bankpass = request.getParameter("bankpass");
    String ulevel = "";

    Statement st = MyCon.getStatement();

    String q = "select ulevel from bankuser where accountno='" + accountno + "' and bankpass='" + bankpass + "'";
    System.out.println(q);

    ResultSet rs = st.executeQuery(q);

    if (!rs.next()) {
        out.println("Invalid Username / Password");
        return;
    }

    ulevel = rs.getString(1);

    session.setAttribute("LEVEL", ulevel);

    
    
    
    
    response.sendRedirect("Bankindex.jsp");
%>