<%@ page import="java.sql.*" %>
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
						<p>;</p>
						<h2 align="center" class="style1">;</h2>
		        </div>

					
					 
					 

<%
String name=request.getParameter("name");
String phn=request.getParameter("phn");
String mailid=request.getParameter("mailid");
String addr=request.getParameter("addr");
String gender=request.getParameter("gender");
String cost="";
int pid=0,pnr=0;
try{
int nop=Integer.parseInt(request.getParameter("nop"));
int trainid=Integer.parseInt((String)session.getAttribute("trainid"));
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/rail","root","root");
	System.out.println("connected");
	Statement st=con.createStatement();

ResultSet rs=st.executeQuery("select max(pid) from passengers");
if(rs.next())
	{
	pid=rs.getInt(1);
	pid=pid+1;
	}
	else
	{
		pid=1000;
	}


String sql="insert into passengers values("+pid+",'"+name+"',"+pnr+",'"+mailid+"','"+phn+"','"+addr+"','"+gender+"',"+nop+")";

	int i=st.executeUpdate(sql);

String sql2="select cost from traininfo where trainno="+trainid+" ";

ResultSet rs1=st.executeQuery(sql2);
while(rs1.next())
	{
	cost=rs1.getString(1);
	}
	int cost1=Integer.parseInt(cost);

int netbal=nop*cost1;

%>
<form method="post" action="book2.jsp?pid=<%=pid%>">

<b><u><h2 align=""><font color="blue" size="4">Payment Details Form</font></H2></u></b>
<h2 align="center">
<table border="0" align="center">
<tr>
<td>Name</td>
<td><input type="text"  min="5" name="name" value=<%=name%> readonly > </td>
</tr>
<tr>
<td>Total Amount</td>
<td><input type="text"  min="5" name="phn" value=<%=netbal%> readonly ></td>
</tr>
<tr>
<td>Payment Mode</td>
<td><select name="mode">
<option value="credit_card">Credit Card</option>
<option value="debit_card">Debit Card</option></select>
</td>
</tr>

<TR>
<TD>Bank Name</TD>
<TD><input type="text"  min="5" name="mailid" required ></td></tr>
<tr>
<TR>
<TD>Card Number</TD>
<TD><input type="text"  min="5" name="addr" required ></td></tr>
</tr>
<tr>
<td></td>
<td><input type="submit" value="  submit  "></TD>
</table>
</h2>
</center>
</form>
</body>
</html>
<%
}catch(Exception e)
{System.out.println(e);
}
%>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>