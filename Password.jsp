<%@page import="java.sql.*,mypack.*"%>
<%
        String btn = request.getParameter("B1");
        if(btn!=null && btn.equals("userlogin")) {
            response.sendRedirect("userlogin.jsp");
            return;
        }
        
        
       
        String unm = request.getParameter("unm");
        String pass = request.getParameter("pass");
         String confirmnewpass = request.getParameter("confirmnewpass");
         String newpass = request.getParameter("newpass");
        

        
        
        
      try{
           
   //         Class.forName("oracle.jdbc.OracleDriver");
    //       Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","system");
           String q="UPDATE Registration SET upass = ?,confirmpass=? WHERE unm = ?";
           PreparedStatement pstmt = MyCon.con.prepareStatement(q);
        //   Statement st = MyCon.getStatement();
            
            pstmt.setString(1, confirmnewpass);
            pstmt.setString(2, newpass);
            pstmt.setString(3, unm);
           

            ResultSet rs=pstmt.executeQuery();
            //out.println("Record Saved");
            response.sendRedirect("ChangePassword.jsp");
        } catch (Exception ex) {
            ex.printStackTrace();
            out.println(ex);
                   }
%>