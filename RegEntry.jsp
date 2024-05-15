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

					
					 
					
					

<head>
<meta http-equiv="Content-Language" content="en-us">
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>Registration Entry Form</title>
<SCRIPT>
function validate() {
	var str="";
	if(frm.unm.value.length==0)
		str="<LI>Name is required</LI>";
            if(frm.upass.value.length==0)
		str+="<LI>Password is required</LI>";
            if(frm.confirmpass.value.length==0)
		str+="<LI>Confirm Password is required</LI>";
            
	if(frm.address.value.length==0) 
		str+="<LI>Address is required</LI>";
            if(frm.eid.value.length==0) 
		str+="<LI>Email Id is required</LI>";
             if(frm.ulevel.value.length==0) 
		str+="<LI>User level is required</LI>";
             if(frm.id.value.length==0) 
		str+="<LI> Id is required</LI>";

	if(str.length!=0) {
		str = "<UL>"+str+"</UL>"
		document.getElementById('err').innerHTML = str;
		return false;
	}
	return true;
}
</SCRIPT>
</head>

<body><br><br><br><br><br>
    <FONT color="red"><SPAN id="err"></SPAN></FONT>

<h1 align="center">Registration Form</h1>
<form method="GET" action="RegistrationEntry.jsp" name="frm" onSubmit="return validate()">
  <div align="center">
    <center>
    <table border="0" cellpadding="5" cellspacing="5" style="border-collapse: collapse" bordercolor="#111111" width="50%" id="AutoNumber1">
      <tr>
        <td width="50%">Name</td>
        <td width="50%"><input type="text" name="unm" size="20" value="" ></td>
      </tr>
      <tr>
        <td width="50%">Password</td>
        <td width="50%"><input type="password" name="upass" size="20" value=""></td>
      </tr>
      <tr>
        <td width="50%">Confirm Password</td>
        <td width="50%"><input type="password" name="confirmpass" size="20" value=""></td>
      </tr>
      <tr>
        <td width="50%">Address</td>
        <td width="50%"><input type="text" name="address" size="20" value=""></td>
      </tr>
      <tr>
        <td width="50%">Email ID</td>
        <td width="50%"><input type="text" name="eid" size="20" value=""></td>
      </tr>
      
       <tr>
        <td width="50%">ID</td>
        <td width="50%"><input type="text" name="id" size="20" value=""></td>
      </tr>
      <tr>
        <td width="100%" colspan="2">
        <p align="center"><input type="submit" value=" Save " name="B1">
            <input type="reset" value=" Clear " name="B2">
            <a href="userlogin.jsp">Back to login!!</a></td>
      </tr>
    </table>
    </center>
  </div>
  <p>&nbsp;</p>
</form>
<p>&nbsp;</p>

</body>

</html>