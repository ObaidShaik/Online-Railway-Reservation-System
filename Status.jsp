<%@page import="java.sql.*,java.io.*,mypack.*" %>
<%
 
try               
{
  String btn=request.getParameter("B1");
  int n=Integer.parseInt(request.getParameter("T1"));
     if(btn!=null && btn.equals("GET STATUS")) {
            
 
       
if(n>=1&& n<=5)
       {
    response.sendRedirect("Confirmed.jsp");
       }
else if(n>6&&n<=10)
       {
response.sendRedirect("RAC.jsp");
       }
else   {
    response.sendRedirect("Confirmed.jsp");
       }

}
   }catch(Exception e)
               {
             e.printStackTrace();
             out.println(e);
}
   
 

%>