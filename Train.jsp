<%@ page import="java.sql.*"%>
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
<%@include file="chk.jsp" %>
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
.style2 {color: #993300}
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
						<p>&nbsp;</p>
						<h2 align="center" class="style1">&nbsp;</h2>
		        </div>
<div id="sidebar2">
						<h3><img src="images/TAGS.jpg" alt="" width="241" height="44" /></h3>
					  <p>&nbsp;</p>
					  <p>
      <div align="center"><blink>DO NOT TRAVEL WITHOUT TICKET!!!  </blink></div>
					  </p>
					  <p>&nbsp;</p>
						<p>&nbsp;</p>
						<p>&nbsp;</p>
						</p>
</div>
<div id="content">
						<div id="box1">
							<div id="box1">
							

							<font color="RED"><U><B>BOOK NOW</B></U></font>

<form action="enquire.jsp" method="post" name="f">
<table>
<tr><td>from</td>
<td><select name="source">
<%
try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/rail","root","root");
	System.out.println("connected");
	Statement st=con.createStatement();
	String sql="select source from traininfo";
	ResultSet rs=st.executeQuery(sql);
while(rs.next())
	{
String source=rs.getString(1);


%>
<option value="<%=source%>"><%=source%></option>
<%
	}%>

</select></td></tr>
<tr><td>to</td>
<td><select name="destination">
<%
	String sql1="select destination,substation1,substation2 from traininfo";
	ResultSet rs1=st.executeQuery(sql1);
while(rs1.next())
	{
String destination=rs1.getString(1);
String substation1=rs1.getString(2);
	String substation2=rs1.getString(3);


%>

<option value="<%=destination%>"><%=destination%></option>
<option value="<%=substation1%>"><%=substation1%></option>
<option value="<%=substation2%>"><%=substation2%></option>
<%
	}
}
catch(Exception e)
{System.out.println(e);
}%>
</select></td></tr>

<tr><td>type</td>
<td><select name="type">
<option value="Passenger">Passenger</option>
<option value="Express">Express</option>
<option value="Mails">Mails</option>
<option value="SuperFast">SuperFast</option>

</select></td></tr>

<tr><td>Sub Type</td>
<td><select name="subtype">
<option value="general">General</option>
<option value="ac">AC</option>
<option value="nonac">Non-Ac</option>
<option value="sleeper">Sleeper</option>

</select></td></tr>


</table><br>
<input type="submit" value="Check Availability"></form><br><br>


							<div id="slideshow"></div>




						
						<br class="clear" />
					</div>
					<br class="clear" />
				</div>
			  </div>
	</div>
    </body>
</html>
