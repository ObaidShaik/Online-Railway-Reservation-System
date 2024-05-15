
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
								<a href="Admin.jsp">Home</a>
						  </li>
							
							<li>
								<a href="UserDetails.jsp">UserDetails</a>
							</li>
							
							<li>
								<a href="addtrain.jsp">Add Train</a>
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
						<table align="center" summary="Calendar">
							<caption>
							<strong>May  2013							</strong>
							</caption>
							<thead>
								<tr>
									<th abbr="Monday" scope="col" title="Monday"><div align="center">Mon</div></th>
									<th abbr="Tuesday" scope="col" title="Tuesday"><div align="center">Tue</div></th>
									<th abbr="Wednesday" scope="col" title="Wednesday"><div align="center">Wed</div></th>
									<th abbr="Thursday" scope="col" title="Thursday"><div align="center">Thru</div></th>
									<th abbr="Friday" scope="col" title="Friday"><div align="center">Fri</div></th>
									<th abbr="Saturday" scope="col" title="Saturday"><div align="center">Sat</div></th>
									<th abbr="Sunday" scope="col" title="Sunday"><div align="center">Sun</div></th>
								</tr>
							</thead>
							<tfoot>
								<tr>
									<td abbr="Apr" colspan="7" id="prev"><a href="#" title="View posts for September 2009">&lt;&lt;May</a></td>
								</tr>
							</tfoot>
							<tbody>
								<tr>
									<td><div align="center"></div></td>
									<td><div align="center"></div></td>
									<td><div align="center">1</div></td>
									<td id="today"><div align="center">2</div></td>
									<td><div align="center">3</div></td>
									<td><div align="center">4</div></td>
									<td><div align="center">5</div></td>
								</tr>
								<tr>
									<td><div align="center">6</div></td>
									<td><div align="center">7</div></td>
									<td><div align="center">8</div></td>
									<td><div align="center">9</div></td>
									<td><div align="center">10</div></td>
									<td><div align="center">11</div></td>
									<td><div align="center">12</div></td>
								</tr>
								<tr>
									<td><div align="center">13</div></td>
									<td><div align="center">14</div></td>
									<td><div align="center">15</div></td>
									<td><div align="center">16</div></td>
									<td><div align="center">17</div></td>
									<td><div align="center">18</div></td>
									<td><div align="center">19</div></td>
								</tr>
								<tr>
									<td><div align="center">20</div></td>
									<td><div align="center">21</div></td>
									<td><div align="center">22</div></td>
									<td><div align="center">23</div></td>
									<td><div align="center">24</div></td>
									<td><div align="center">25</div></td>
									<td><div align="center">26</div></td>
								</tr>
								<tr>
                                  <td><div align="center">27</div></td>
								  <td><div align="center">28</div></td>
								  <td><div align="center">29</div></td>
								  <td><div align="center">30</div></td>
								  <td><div align="center">31</div></td>
								  <td colspan="2"><div align="center"></div></td>
							  </tr>
							</tbody>
	  </table>
						</p>
			    </div>
					<div id="content">
						<div id="box1">
							<h1 align="center"><strong>
							  Welcome To Railway Website!!					</strong></h1>
							<script type="text/javascript" src="jquery-1.2.6.min.js"></script>

<form action="addtrain1.jsp" name="form">
<table>
<tr>
<td>Train Name</td>
<td><input type="text" name="tname" required></td>
</tr>

<tr>
<td>Source Station</td>
<td><input type="text" name="sstation" required></td>
</tr>

<tr>
<td>Destination Station</td>
<td><input type="text" name="dstation" required></td>
</tr>


<tr>
<td>Train Type</td>
<td><select name="ttype" required>
<option value="Passenger">Passenger</option>
<option value="Express">Express</option>
<option value="Mails">Mails</option>
<option value="SuperFast">SuperFast</option></td>
</tr>

<tr>
<td>Train Coach</td>
<td><select name="tc" required>
<option value="general">General</option>
<option value="nonac">Non-AC</option>
<option value="ac">AC</option>
<option value="sleeper">Sleeper</option>
</td>
</tr>

<tr>
<td>Arrival Time</td>
<td><input type="text" name="at" required></td>
</tr>

<tr>
<td>Reaching Time</td>
<td><input type="text" name="rt" required></td>
</tr>

<tr>
<td>SubStation1 </td>
<td><input type="text" name="sub1" required></td>
</tr>

<tr>
<td>Arrial Time At SubStation1 </td>
<td><input type="text" name="asub1" required></td>
</tr>

<tr>
<td>Depature Time At SubStation1 </td>
<td><input type="text" name="dsub1" required></td>
</tr>



<tr>
<td>SubStation2 </td>
<td><input type="text" name="sub2" required></td>
</tr>

<tr>
<td>Arival Time At SubStation2 </td>
<td><input type="text" name="asub2" required></td>
</tr>


<tr>
<td>Depature Time At SubStation2</td>
<td><input type="text" name="dsub2" required></td>
</tr>
<tr>
<td>Distance</td>
<td><input type="text" name="distance" required></td>
</tr>
<tr>
<td>Cost</td>
<td><input type="text" name="cost" required></td>
</tr>

<tr>
<td></td>
<td><input type="submit" value="submit"></td></tr>

</table>
</form>



						
						<br class="clear" />
					</div>
					<br class="clear" />
				</div>
			  </div>
	</div>
    </body>
</html>
