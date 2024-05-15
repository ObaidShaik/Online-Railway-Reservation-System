
<html>

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
		str+="<LI>User Level is required</LI>";
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

<body>
    <FONT color="red"><SPAN id="err"></SPAN></FONT>

<h1 align="center">Update Registration Details here!!</h1>
<form method="GET" action="UpdateRegistrationEntry.jsp" name="frm" onSubmit="return validate()">
  <div align="center">
    <center>
    <table border="0" cellpadding="5" cellspacing="5" style="border-collapse: collapse" bordercolor="#111111" width="50%" id="AutoNumber1">
      <tr>
        <td width="50%">Name</td>
        <td width="50%"><input type="text" name="unm" size="20"  ></td>
      </tr>
      <tr>
        <td width="50%">Password</td>
        <td width="50%"><input type="password" name="upass" size="20"></td>
      </tr>
      <tr>
        <td width="50%">Confirm Password</td>
        <td width="50%"><input type="password" name="confirmpass" size="20"></td>
      </tr>
      <tr>
        <td width="50%">Address</td>
        <td width="50%"><input type="text" name="address" size="20"></td>
      </tr>
      <tr>
        <td width="50%">Email ID</td>
        <td width="50%"><input type="text" name="eid" size="20"></td>
      </tr>
       <tr>
        <td width="50%">User Level</td>
        <td width="50%"><input type="text" name="ulevel" size="20"></td>
      </tr>
       <tr>
        <td width="50%">ID</td>
        <td width="50%"><input type="text" name="id" size="20"></td>
      </tr>
      <tr>
        <td width="100%" colspan="2">
        <p align="center"><input type="submit" value="Save" name="B1">
             <input type="reset" value="Clear" name="B2"></p>
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