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
							<a >Online Railway Reservation System</a>						<img src="images/b-425102-animated_train.gif" alt="" width="208" height="98" /></h1>
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

					
					 
					  </p>
					  <p>&nbsp;</p>
						<p>&nbsp;</p>
						<p>&nbsp;</p>
						</p>


					
						



<%@ page import="java.sql.*" %>

<%
String source=request.getParameter("source");
String destination=request.getParameter("destination");
String type=request.getParameter("type");
String subtype=request.getParameter("subtype");
try{
int trainno;
String trainname="",source1="",stime="",dest="",rt="",ttype="",tstype="",cost="",subs1="",subs2="";


	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/rail","root","root");
	System.out.println("connected");
	Statement st=con.createStatement();

	String sql="select * from traininfo where source='"+source+"' and destination='"+destination+"' and traintype='"+type+"' and trainsubtype='"+subtype+"' " ;

//	System.out.println(sql);

String sql1="select * from traininfo where source='"+source+"' and substation1='"+destination+"' and traintype='"+type+"' and trainsubtype='"+subtype+"' ";

	//System.out.println(sql1);


String sql2="select * from traininfo where source='"+source+"' and substation2='"+destination+"' and traintype='"+type+"' and trainsubtype='"+subtype+"' ";
	//System.out.println(sql2);
ResultSet rs=st.executeQuery(sql);





%>
<font size=4>
<table cellspacing="4" cellpadding="4" border="2">
<tr><th>TrainNo</th>
<th>Train Name</th>
<th>Source</th>
<th>Starting Time</th>
<th>Destination</th>
<th>Reaching Time</th>
<th>Train Type</th>
<th>Train Coach</th>
<th>Sub Station1</th>
<th>Sub Station2</th>
<th>Cost</th></tr>

<%
	while(rs.next())
	{
		trainno=rs.getInt(1);
        trainname=rs.getString(2);
		source1=rs.getString(3);
		stime=rs.getString(4);
		dest=rs.getString(5);
		rt=rs.getString(6);
		ttype=rs.getString(7);
		tstype=rs.getString(8);
		subs1=rs.getString(9);
		subs2=rs.getString(12);

		cost=rs.getString(16);
%>
<tr><td><a href="book.jsp?id=<%=trainno%>"><%=trainno%></a></td>
<td><%=trainname%></td>
<td><%=source1%></td>
<td><%=stime%></td>
<td><%=dest%></td>
<td><%=rt%></td>
<td><%=ttype%></td>
<td><%=tstype%></td>
<td><%=subs1%></td>
<td><%=subs2%></td>
<td><%=cost%></td></tr>
<%
	}

ResultSet rs1=st.executeQuery(sql1);
while(rs1.next())
	{
		trainno=rs1.getInt(1);
        trainname=rs1.getString(2);
		source1=rs1.getString(3);
		stime=rs1.getString(4);
		dest=rs1.getString(5);
		rt=rs1.getString(6);
		ttype=rs1.getString(7);
		tstype=rs1.getString(8);
		subs1=rs1.getString(9);
		subs2=rs1.getString(12);
		cost=rs1.getString(16);
%>
<tr><td><a href="book.jsp?id=<%=trainno%>"><%=trainno%></a></td>
<td><%=trainname%></td>
<td><%=source1%></td>
<td><%=stime%></td>
<td><%=dest%></td>
<td><%=rt%></td>
<td><%=ttype%></td>
<td><%=tstype%></td><td><%=subs1%></td>
<td><%=subs2%></td>
<td><%=cost%></td></tr>
<%
	}
ResultSet rs2=st.executeQuery(sql2);

while(rs2.next())
	{
		trainno=rs2.getInt(1);
        trainname=rs2.getString(2);
		source1=rs2.getString(3);
		stime=rs2.getString(4);
		dest=rs2.getString(5);
		rt=rs2.getString(6);
		ttype=rs2.getString(7);
		tstype=rs2.getString(8);
		subs1=rs2.getString(9);
		subs2=rs2.getString(12);
		cost=rs2.getString(16);
%>
<tr><td><a href="book.jsp?id=<%=trainno%>"><%=trainno%></a></td>
<td><%=trainname%></td>
<td><%=source1%></td>
<td><%=stime%></td>
<td><%=dest%></td>
<td><%=rt%></td>
<td><%=ttype%></td>
<td><%=tstype%></td><td><%=subs1%></td>
<td><%=subs2%></td>
<td><%=cost%></td></tr>
<%
	}
%>
</table>
<div class="footer"><marquee>To Book Click on the Train Number</marquee></div>


<%
}
catch(Exception e)
{
	System.out.println(e);
}


%><br><br><br><br><br><br><br><br><br><br>
</div></div></div></div></div></div></div></div>