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
.style3 {color: #993300}
-->
        </style>
		<SCRIPT>
function validate() {
	var str="";
	if(frm.mobile.value.length==0)
		str="<LI>Mobile no. is required</LI>";
	

	if(str.length!=0) {
		str = "<UL>"+str+"</UL>"
		document.getElementById('err').innerHTML = str;
		return false;
	}
	return true;
}
</SCRIPT>
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
						  <h1 align="center"><FONT color="red"><SPAN id="err"></SPAN></FONT>
<h1 align="center" class="style3">Search Ticket</h1>
<form method="POST" action="TicketSearch.jsp" name="frm" onSubmit="return validate()" target="_blank">
  <div align="center">
    <center>
    <table border="0" cellpadding="5" cellspacing="5" style="border-collapse: collapse" bordercolor="#111111" width="60%" id="AutoNumber1">
      <tr>
        <td width="100%">
          <p align="center">
            <span class="style3">PNR Number            </span>
            <input type="text" name="pnr" size="20"><input type="submit" value="Search" name="B1">
            <input type="submit" value="Index" name="B1"><input type="reset" value="Clear" name="B2">
          </p></td>
      </tr>
      </table>
    </center>
  </div>
</form>
</h1>
						    <h1 align="center"><a href="Index.jsp"><center>Back</center></a></h1>
						    <div id="slideshow"></div>




						
						<br class="clear" />
					</div>
					<br class="clear" />
				</div>
			  </div>
	</div>
    </body>
</html>
