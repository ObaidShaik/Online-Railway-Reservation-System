<%@page import="java.sql.*"%>
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

        
        
        
      try{
           
            Class.forName("oracle.jdbc.OracleDriver");
           Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","system");
           String q="UPDATE Registration SET upass = ?,confirmpass=?,address=?,eid=?,ulevel=?,unm=? WHERE id = ?";
           PreparedStatement pstmt = con.prepareStatement(q);
        //   Statement st = MyCon.getStatement();
            
            pstmt.setString(1, upass);
            pstmt.setString(2, confirmpass);
            pstmt.setString(3, address);
            pstmt.setString(4, eid);
            pstmt.setString(5, ulevel);
            pstmt.setString(6, unm);
            pstmt.setString(7, id);

            ResultSet rs=pstmt.executeQuery();
            //out.println("Record Saved");
            response.sendRedirect("UpdateRegEntry.jsp");
        } catch (Exception ex) {
            ex.printStackTrace();
            out.println(ex);
                   }
%>