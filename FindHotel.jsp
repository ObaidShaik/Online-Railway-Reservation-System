<%
try{
String st=request.getParameter("t");
String btn=request.getParameter("Submit");

if(btn!=null && btn.equals("Find Hotel"));
{
    if (st.equals("Delhi"))
    {
        response.sendRedirect("Delhi.html");
    }
    if (st.equals("Agra"))
    {
        response.sendRedirect("Agra.html");
    }
    if (st.equals("Kanpur"))
    {
        response.sendRedirect("Kanpur.html");
    }  
    if (st.equals("Indore"))
    {   
        response.sendRedirect("Indore.html");
    }                           
}
}catch(Exception e)
{
     e.printStackTrace();
       out.println(e);      
}
               
      



%>