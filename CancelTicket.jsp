
<%@include file="chk.jsp" %>
<%@page import="java.sql.*,mypack.*"%>

<%
try{
String btn=request.getParameter("BACK");
String btn2=request.getParameter("CANCEL");
String pnr=request.getParameter("pnr");
if(btn!=null && btn.equals("BACK"))
       {
         response.sendRedirect("Index.jsp");
      }
if(btn2.equals("CANCEL"))
       {
       //  Class.forName("oracle.jdbc.OracleDriver");
       //    Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","system");
          Statement st=MyCon.getStatement();         
            String q="delete from Ticket where pnr ='"+pnr+"'";
            int s=st.executeUpdate(q);
            if(s>0)
                response.sendRedirect("ConfirmCancellation.jsp");
            else
             response.sendRedirect("ConfirmNotCancellation.jsp");
       }

}catch(Exception ex){
     ex.printStackTrace();
     out.println(ex);
  
 }
        


%>