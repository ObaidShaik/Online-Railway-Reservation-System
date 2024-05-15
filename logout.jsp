<%@page  session="false" %>

<%
        HttpSession session = request.getSession(false);
        if(session!=null)
            session.removeAttribute("LEVEL");
        
        response.sendRedirect("userlogin.jsp");

%>