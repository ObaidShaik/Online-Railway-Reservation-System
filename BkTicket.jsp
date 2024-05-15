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
		<SCRIPT>
function validate() {
	var str="";
	if(frm.name.value.length==0)
		str="<LI>Name is required</LI>";
        if(frm.age.value.length==0)
		str+="<LI>Age is required</LI>";
            if(frm.gender.value.length==0)
		str+="<LI>Gender is required</LI>";
	if(frm.trainname.value.length==0) 
		str+="<LI>Train Name is required</LI>";
            if(frm.trainno.value.length==0)
		str+="<LI>Train No is required</LI>";
            if(frm.quota.value.length==0)
		str+="<LI>Quota is required</LI>";
            if(frm.mobile.value.length==0)
		str+="<LI>Mobile no. is required</LI>";

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
						<p>&nbsp;</p>
						</p>
</div>
<div id="content">
						<div id="box1">
							<FONT color="red"><SPAN id="err"></SPAN></FONT>
<form id="form1" name="form1" method="post" action="BookTicket.jsp" onSubmit="return validate()">
  <center>
  <h1 align="center" class="style1 style2">BOOK TICKET </h1>
  <table border="1" align="center">
    <tr>
      <td width="100">Name</td>
      <td width="300"><label>
        
          <div align="center">
            <input type="text" name="name" />
            </div>
          </label></td>
    </tr>
    <tr>
      <td width="100">Age</td>
      <td width="300"><label>
        
        <div align="center">
          <input type="text" name="age" />
        </div>
      </label></td>
    </tr>
    <tr>
      <td width="100">Gender</td>
      <td width="300"><label>
        
        <div align="center">
          <input type="text" name="gender" />
        </div>
      </label></td>
    </tr>
    <tr>
      <td width="100">Train Name</td>
      <td width="300"><label>

            <div align="center">
              <input type="text" name="trainname" />
              </div>
          </label></td></tr>
    <tr>
      <td width="100">Train No.</td>
      <td width="300"><label>
        
        <div align="center">
          <input type="text" name="trainno" />
        </div>
      </label></td>
    </tr>
    <tr>
      <td width="100">Quota</td>
      <td width="300"><label>

            <div align="center">
              <input type="text" name="quota" />
              </div>
          </label></td></tr>
      <tr>
      <td width="100">Mobile number</td>
      <td width="300"><label>

            <div align="center">
              <input type="text" name="mobile" />
              </div>
          </label></td></tr>
     
       
        <tr>
        <td colspan="2">
        <p align="center"><input type="submit" value="Save" name="B1">
        <input type="submit" value="Index" name="B1">
        <input type="submit" value="GoToBank" name="B1">
         <input type="reset" value="Clear" name="B2"></td>
      </tr>
   </table>
  </center>
 </form>
						  




						
						<br class="clear" />
					</div>
					<br class="clear" />
				</div>
			  </div>
	</div>
    </body>
</html>
