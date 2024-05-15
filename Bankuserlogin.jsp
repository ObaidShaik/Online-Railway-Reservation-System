
<html>

<head>
<meta http-equiv="Content-Language" content="en-us">
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>Login Form</title>
<SCRIPT>
function validate() {
	var str="";
	if(frm.accountno.value.length==0)
		str="<LI>Account No. is required</LI>";
	if(frm.bankpass.value.length==0) 
		str+="<LI>Transaction Password is required</LI>";

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

<h1 align="center">WELCOME TO UNION BANK OF INDIA</h1>
<form method="POST" action="Banklogin.jsp" name="frm" onSubmit="return validate()">
  <div align="center">
    <center>
    <table border="0" cellpadding="5" cellspacing="5" style="border-collapse: collapse" bordercolor="#111111" width="50%" id="AutoNumber1">
      <tr>
        <td width="50%">Account No.</td>
        <td width="50%"><input type="text" name="accountno" size="20" ></td>
      </tr>
      <tr>
        <td width="50%">Transaction Password</td>
        <td width="50%"><input type="password" name="bankpass" size="20"></td>
      </tr>
      <tr>
        <td width="100%" colspan="2">
        <p align="center"><input type="submit" value="Login" name="B1"><input type="reset" value="Clear" name="B2"></td>
   
      <a href="BkTicket.jsp"> Back to Book Ticket</a>
            
      </tr>
    </table>
    </center>
  </div>
  <p>&nbsp;</p>
</form>
        
</body>

</html>