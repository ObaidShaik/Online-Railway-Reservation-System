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
								<a href="Hotel.jsp">Hotels</a>
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
						<p><img src="images/RECENT COMMENTS.jpg" alt="" width="241" height="44" /></p>
						<h2 align="center" class="style1">&nbsp;</h2>
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
						<table align="center" summary="Calendar">
							<caption>
							<strong>April 2024							</strong>
							</caption>
							<thead>
								<tr>
									<th abbr="Monday" scope="col" title="Monday">Mon</th>
									<th abbr="Tuesday" scope="col" title="Tuesday">Tue</th>
									<th abbr="Wednesday" scope="col" title="Wednesday">Wed</th>
									<th abbr="Thursday" scope="col" title="Thursday">Thru</th>
									<th abbr="Friday" scope="col" title="Friday">Fri</th>
									<th abbr="Saturday" scope="col" title="Saturday">Sat</th>
									<th abbr="Sunday" scope="col" title="Sunday">Sun</th>
								</tr>
							</thead>
							<tfoot>
								<tr>
									<td abbr="Apr" colspan="7" id="prev"><a href="#" title="View posts for September 2009">&laquo; April</a></td>
								</tr>
							</tfoot>
							<tbody>
								<tr>
									<td>1</td>
									<td>2</td>
									<td>3</td>
									<td id="today">4</td>
									<td>5</td>
									<td>6</td>
									<td>7</td>
								</tr>
								<tr>
									<td>8</td>
									<td>9</td>
									<td>10</td>
									<td>11</td>
									<td>12</td>
									<td>13</td>
									<td>14</td>
								</tr>
								<tr>
									<td>15</td>
									<td>16</td>
									<td>17</td>
									<td>18</td>
									<td>19</td>
									<td>20</td>
									<td>21</td>
								</tr>
								<tr>
									<td>22</td>
									<td>23</td>
									<td>24</td>
									<td>25</td>
									<td>26</td>
									<td>27</td>
									<td>28</td>
								</tr>
								<tr>
									<td>29</td>
									<td>30</td>
									<td colspan="5">&nbsp;</td>
								</tr>
							</tbody>
	  </table>
						</p>
			    </div>
					<div id="content">
						<div id="box1">
							<h1 align="center">
						  
						  <FONT color="red"><SPAN id="err"></SPAN></FONT>
    <h1 align="center" class="style2"><u>Fare</u></h1>
<form method="GET" action="Bankfare.jsp" name="frm" onSubmit="return validate()">
  <div align="center">
    <center>
    <table border="0" cellpadding="5" cellspacing="5" style="border-collapse: collapse" bordercolor="#111111" width="100%" id="AutoNumber1">
      <tr>
        <td width="50%">Distance Travelled(in km)</td>
        <td width="50%"><input type="text" name="distance" size="20" required="required"></td>
      </tr>
      <tr>
        <td width="50%">Enter your Class of travel(1 for 1 AC ,2 for 2 AC, 3 for sleeper,4 for general)</td>
        <td width="50%"><input type="text" name="travelclass" size="20" required="required"></td>
      </tr>
         <tr>
        <td width="50%">Enter your mobile number </td>
        <td width="50%"><input type="text" name="mobile" size="20" required="required"></td>
      </tr>
     
        <td width="100%" colspan="2">
        <p align="center"><input type="submit" value="Get Fare" name="B1">
		<input type="reset" value="Clear" name="B2">
            <a href="Bankuserlogin.jsp">Back to login!!</a></td>
      </tr>
    </table>
    </center>
  </div>
  <p>&nbsp;</p>
</form>
						  
				
					  </div>
					</div>
					
						  




						
						<br class="clear" />
					</div>
					<br class="clear" />
				</div>
			  </div>
	</div>
    </body>
</html>
