<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<!--

	Design by Free CSS Templates
	http://www.freecsstemplates.org
	Released for free under a Creative Commons Attribution License

	Name       : Reverse Obscurity
	Version    : 1.0
	Released   : 20130222

-->

<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta name="keywords" content="" />
        <meta name="description" content="" />
        <meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<title>Online Railway Reservation System</title>
        <link href="http://fonts.googleapis.com/css?family=PT+Sans+Narrow" rel="stylesheet" type="text/css" />
        <link href="http://fonts.googleapis.com/css?family=Lobster" rel="stylesheet" type="text/css" />
		<link rel="stylesheet" type="text/css" href="style.css" />
        <style type="text/css">
<!--
.style1 {
	color: #FF0000;
	font-weight: bold;
}
.style2 {color: #993333}
.style3 {color: #FFFFFF}
-->
        </style>
</head>
    <body>
		<div id="bg">
			<div id="outer">
			  <div id="header">
					<div id="logo">
						<h1>
							<a>Online Railway Reservation System</a>						<img src="images/b-425102-animated_train.gif" alt="" width="208" height="98" /></h1>
				  </div>
					<div id="nav">
						<ul>
						<li >
								<a href="Index.jsp">Home</a>
						  </li>
							
							<li>
								<a href="PNR.jsp">PNR status</a>
							</li>
							
							<li>
								<a href="Train.jsp">Book Ticket</a>
							</li>
							
							<li>
								
							</li>
							<li>
								<a href="Rule.jsp">Rules</a>
							</li>
                                                    <li>
								<a href="cancellation.jsp">Cancel Ticket</a>
							</li>
                                                     <li>
								<a href="Hotel.jsp">Hotels<strong><b><blink><font color="yellow" size="1.5">NEW</font></blink></b>
								</strong></a>
							</li>
                                                     <li>
								<a href="logout.jsp">Logout</a>
							</li>
                                                   
						</ul>
						<br class="clear" />
			    </div>
			  </div>
				<div id="banner"><img src="images/main_header_big3_white23.JPG" width="1120" height="222" alt="" /></div>
			  <div id="main">
					<div id="sidebar1">
						<h3><img src="images/NEWS.jpg" alt="" width="241" height="44" /></h3>
						<p><Marquee direction="up">
						INDIAN RAILWAYS heartly welcomes you to our website!!! 
				      </Marquee></p>
						
						<h2 align="center" class="style1">&nbsp;</h2>
				        <p align="center" class="style1">&nbsp;</p>
				  </div>
<div id="sidebar2">
						<h3><img src="images/TAGS.jpg" alt="" width="241" height="44" /></h3>
					  <p>&nbsp;</p>
					  <p>
      <div align="center"><blink>DO NOT TRAVEL WITHOUT TICKET!!!  </blink></div>
					  </p>
					
			    </div>
					<div id="content">
						<div id="box1">
							
							
							<%@include file="chk.jsp" %>
<%@page import="java.sql.*,mypack.*"%>
<%
        String btn = request.getParameter("B1");
        if (btn != null && btn.equals("Index")) {
            response.sendRedirect("Index.jsp");
            return;
        }

        String pnr = request.getParameter("pnr") ;
        String name="",age="",gender="",trainname="",trainno="",quota="";
        
        

        try {
            Statement st = MyCon.getStatement();
            String q = "select * from Ticket where pnr='" + pnr+"'" ;
            ResultSet rs = st.executeQuery(q);
         //   out.println(pnr);
           // out.println(q);
            
            
            
                  
           if (!rs.next()) {
               out.println("Invalid Values");
               return;
                  }
                     else{           
            name = rs.getString("name");
            age = rs.getString("age");
            gender = rs.getString("gender");
            trainname=rs.getString("trainname");
            trainno=rs.getString("trainno");
            quota=rs.getString("quota");
            pnr=rs.getString("pnr");
                       }
            
                       rs.close();
        } catch (Exception ex) {
            ex.printStackTrace();
            out.println(ex);
            return;
        }

%>



<meta http-equiv="Content-Language" content="en-us">
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>Ticket</title>


<body>

<h1 align="center" class="style2">Ticket</h1>
<div align="center">
  <center>
  <table border="1" cellpadding="5" cellspacing="5" style="border-collapse: collapse" bordercolor="#111111" width="100%" id="AutoNumber1" bgcolor="#FFFFFF">
    <tr>
      
      <td width="13%" bgcolor="#993300">        <center> 
          <b><span class="style3">Name</span>              </b>
        </center></td>
  <td width="12%" bgcolor="#993300">    <center>
      <b><span class="style3">Age</span>          </b>
    </center></td>
      <td width="13%" bgcolor="#993300">        <center>
          <b><span class="style3">Gender</span>              </b>
        </center></td>
      <td width="18%" bgcolor="#993300">        <center>
          <b><span class="style3">Train Name</span>              </b>
        </center></td>
      <td width="14%" bgcolor="#993300">        <center>
          <b><span class="style3">Train No</span>              </b>
        </center></td>
      <td width="12%" bgcolor="#993300">        <center>
          <b><span class="style3">Quota</span>              </b>
        </center></td>
  <td width="18%" bgcolor="#993300">    <center>
      <b><span class="style3">PNR Number</span>          </b>
    </center></td>
      
    </tr>
    
    <tr>
      <td width="13%"><font color="#000000">
        <center><%=name%></center></font></td>
      <td width="12%"><font color="#000000">
        <center><%=age%></center></font></td>
      <td width="13%"><font color="#000000">
        <center><%=gender%></center></font></td>
      <td width="18%"><font color="#000000">
        <center><%=trainname%></center></font></td>
      <td width="14%"><font color="#000000">
        <center><%=trainno%></center></font></td>
      <td width="12%"><font color="#000000">
        <center><%=quota%></center></font></td>
       <td width="18%"><font color="#000000">
         <center><%=pnr%></center></font></td>
    
      
          </tr>
                  
    
   
  </table>
  </center>
       
       
       <p>&nbsp;         </p>
       <p>
         <input type="submit" name="print" onClick="window.print()" value="Print" >
          </p>
</div>
<p align="center"><a href="TickSearch.jsp">Search Again</a></p>
<p align="center"><a href="Index.jsp">Back to Index Page</a></p>



							
						    <br class="clear" />
					</div>
					<br class="clear" />
				</div>
			  </div>
	</div>
    </body>
</html>
