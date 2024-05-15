<%@page import="java.sql.*,mypack.*"%>
<%@include file="chk.jsp" %>
<%
       
        
        
       
        int d = Integer.parseInt(request.getParameter("distance"));
        int c = Integer.parseInt(request.getParameter("travelclass"));
        int mobile = Integer.parseInt(request.getParameter("mobile"));
        
        
        switch(c)
                               {
                                             case 1:
                                               c=1000;
                                                 break;
                                           case 2:
                                               c=500;
                                                break;
                                         case 3:
                                                c=200;
                                               break;
                                           default:
                                                  c=100;
                                                  break;                                                                                                                                                                                                                                            
               
                               }
        int fare=0;
        fare= d * c;
        out.println("Total fare is Rs:"+fare);
        
        
        String pnr="";
         try {
            Statement st = MyCon.getStatement();
            String q = "Select * from Ticket where mobile='"+mobile+"'";
           ResultSet rs = st.executeQuery(q);
         
           
          while(rs.next()){
               pnr = rs.getString("pnr");
          out.println("Your PNR no is " + pnr );
                   }
          rs.close();
        } catch (Exception ex) {
            response.sendRedirect("error.html");
            
        }
        

       
%>
<html>
  <body>
      <INPUT type="button" value="Click" onclick="alert('Congratulations!!! Your Ticket has been Successfully Booked')"><a href="Index.jsp">Go Back To Index Page to view the ticket</a>
      </body>
    </html>