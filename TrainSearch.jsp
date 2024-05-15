<%@include file="chk.jsp" %>
<%@page import="java.sql.*,mypack.*"%>
<%
        String btn = request.getParameter("B1");
        if (btn != null && btn.equals("Menu")) {
            response.sendRedirect("Index.jsp");
            return;
        }

        String SourceId = request.getParameter("SourceId");
        String DestinationId = request.getParameter("DestinationId");
        String Train="";
        int TrainNo,Id;          
        String Type="";
        
        

        try {
            Statement st = MyCon.getStatement();
            String q = "select * from Train where SourceId ='" + SourceId + "' and DestinationId= '" + DestinationId + "' order by TrainNo" ;
            ResultSet rs = st.executeQuery(q);

            if (!rs.next()) {
                out.println("Requested train is unavailable");
                return;
            }

           
            Train = rs.getString(1);
             SourceId = rs.getString(2);
             DestinationId = rs.getString(3);
             TrainNo=rs.getInt(4);
           Type=rs.getString(5);
             Id=rs.getInt(6);
                       
        } catch (Exception ex) {
            ex.printStackTrace();
            out.println(ex);
            return;
        }

%>

<html>

<head>
<meta http-equiv="Content-Language" content="en-us">
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>Train Search Result</title>
</head>

<body bgcolor="#FFCCFF">

<h1 align="center">Train Search Results</h1>
<div align="center">
  <center>
  <table border="1" cellpadding="5" cellspacing="5" style="border-collapse: collapse" bordercolor="#111111" width="70%" id="AutoNumber1" bgcolor="#800000">
    <tr>
      
      <td width="25%" bgcolor="#FFFF00"><u><b>Train Id</b></u></td>
  <td width="25%" bgcolor="#FFFF00"><u><b>Train Name</b></u></td>
      <td width="25%" bgcolor="#FFFF00"><u><b>Source</b></u>&nbsp;</td>
      <td width="25%" bgcolor="#FFFF00"><u><b>Destination</b></u></td>
      <td width="25%" bgcolor="#FFFF00"><u><b>Train No</b></u></td>
      <td width="25%" bgcolor="#FFFF00"><u><b>Type</b></u></td>
      
    </tr>
    
    <tr>
      <td width="25%"><font color="#FFFFFF"><%=Id%></font></td>
      <td width="25%"><font color="#FFFFFF"><%=Train%></font></td>
      <td width="25%"><font color="#FFFFFF"><%=SourceId%></font></td>
      <td width="25%"><font color="#FFFFFF"><%=DestinationId%></font></td>
      <td width="25%"><font color="#FFFFFF"><%=TrainNo%></font></td>
      <td width="25%"><font color="#FFFFFF"><%=Type%></font></td>
      <td width="25%"><font color="#FFFFFF"><a href="BkTicket.jsp">Book your Ticket</a></font></td>
      
          </tr>
          
         
    
   
  </table>
  </center>
</div>
<p><a href="Train.jsp">Search Again</a></p>
<p><a href="Index.jsp">Back to Menu</a></p>

</body>

</html>