<%@page import="java.sql.*,mypack.*"%>
<%

    String unm = request.getParameter("unm");
    String upass = request.getParameter("upass");
    String ulevel = "";
	if(unm.equals("admin")&&upass.equals("admin"))
	{
		response.sendRedirect("Admin.jsp");

	}
else{
    Statement st = MyCon.getStatement();

    String q = "select * from Registration where id='" + unm + "' and upass='" + upass + "'";
    //out.println(q);

    ResultSet rs = st.executeQuery(q);
	if(rs.next())
	{
		response.sendRedirect("Index.jsp");
	}
else
	response.sendRedirect("userlogin.jsp");
  
}
%>