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

<html xmlns="http://www.w3.org/1999/xhtml">
    <head><title>Login Form</title>
<SCRIPT>
function validate() {
	var str=""
	if(frm.unm.value.length==0)
		str="Username is Required\n";
	if(frm.upass.value.length==0) 
		str+="Password is Required";

	if(str.length!=0) {
		alert(str); 
		return false;
	}
	return true;
}
</SCRIPT>

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
						<p align="center" class="style1">&nbsp;</p>
				  </div>
<div id="sidebar2">
						<h3><img src="images/TAGS.jpg" alt="" width="241" height="44" /></h3>
					  <p>&nbsp;</p>
					  <p>
      <div align="center"><blink>DO NOT TRAVEL WITHOUT TICKET!!!  </blink></div>
					  </p>
					  <p>&nbsp;</p>
						<p>&nbsp;</p>
						<p><img src="images/CALENDER.jpg" alt="" width="241" height="44" /></p>

<div id="box1">
       
        <script type="text/javascript" src="jquery-1.2.6.min.js"></script>

<script type="text/javascript">



function slideSwitch() {
    var $active = $('#slideshow IMG.active');

    if ( $active.length == 0 ) $active = $('#slideshow IMG:last');

    // use this to pull the images in the order they appear in the markup
    var $next =  $active.next().length ? $active.next()
        : $('#slideshow IMG:first');

    // uncomment the 3 lines below to pull the images in random order
    
    // var $sibs  = $active.siblings();
    // var rndNum = Math.floor(Math.random() * $sibs.length );
    // var $next  = $( $sibs[ rndNum ] );


    $active.addClass('last-active');

    $next.css({opacity: 0.0})
        .addClass('active')
        .animate({opacity: 1.0}, 1000, function() {
            $active.removeClass('active last-active');
        });
}

$(function() {
    setInterval( "slideSwitch()", 5000 );
});

</script>

<style type="text/css">

/*** set the width and height to match your images **/

#slideshow {
    position:relative;
    height:350px;
}

#slideshow IMG {
    position:absolute;
    top:0;
    left:0;
    z-index:8;
    opacity:0.0;
}

#slideshow IMG.active {
    z-index:10;
    opacity:1.0;
}

#slideshow IMG.last-active {
    z-index:9;
}

</style>



						<br class="clear" />
					</div>
					<br class="clear" />
				</div>
			  </div>
	</div>

<%
String id=request.getParameter("id");
System.out.println("id is  "+id);
session.setAttribute("trainid",id);





%>
<h1 align="center"><strong>
          Welcome To Railway Website!!					</strong></h1>
<form method="post" action="book1.jsp">
<b><u><h2 align="center"><font color="blue" size="4">Customer Details Form</font></H2></u></b>
<h2 align="center">
<table border="0" >
<tr>
<td>Name:</td>
<td><input type="text"  min="5" name="name" required > </td>
</tr>
<tr>
<td>Phone Number</td>
<td><input type="text"  min="5" name="phn" required ></td>
</tr>
<TR>
<TD>MailId:-</TD>
<TD><input type="email"  min="5" name="mailid" required ></td></tr>
<tr>
<TR>
<TD>Address:-</TD>
<TD><input type="text"  min="5" name="addr" required ></td></tr>
<tr>
<TR>
<TD>Gender:-</TD>
<TD><select name="gender" required>
<option value="male">Male<option>
<option value="female">Female<option>
</td></tr>
<tr>
<TR>
<TD>No Of Passengers:-&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</TD>
<TD><input type="number"  name="nop" required ></td></tr>
<tr>
<td></td>
<td><input type="submit" value="submit"></TD>
</table>
</h2>
</form></center>
</BODY>
</HTML>