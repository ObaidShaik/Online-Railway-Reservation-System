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
						<p>&nbsp;</p>
						<h2 align="center" class="style1">&nbsp;</h2>
		        </div>

					
					 
					  </p>
					  <p>&nbsp;</p>
						<p>&nbsp;</p>
						<p>&nbsp;</p>
						</p>

<%

String netbal=request.getParameter("phn");
String mode=request.getParameter("mode");
String bankname=request.getParameter("mailid");
String cardnumber=request.getParameter("addr");
int ticketid=0;
try{
int pid1=Integer.parseInt(request.getParameter("pid"));
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/rail","root","root");
	System.out.println("connected");
	Statement st=con.createStatement();

ResultSet rs=st.executeQuery("select max(ticketid) from payment");
if(rs.next())
	{
	ticketid=rs.getInt(1);
	ticketid=ticketid+1;
	}
	else
	{
		ticketid=1000;
	}


String sql="insert into payment values("+pid1+",'"+netbal+"','"+bankname+"','"+mode+"','"+cardnumber+"',"+ticketid+")";

	int i=st.executeUpdate(sql);
	if(i>0)
	{
		%>
		<center><font color="#0033FF" size=4>U R Customet id is<%=pid1%><br>U R Ticket id is<%=ticketid%>
		</font></center>
		<%}
		else
	{
%>
		<center><font color="#0033FF" size=4>U R Bookin of Tiket Failed Due to Some Technical Problems
		</font></center>
		<%}

}catch(Exception e)
{System.out.println(e);
}
%>
</body>
</html><br><br><br><br><br><br><br><br><br><br><br><br>