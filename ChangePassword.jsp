<html>
<head>
		<SCRIPT>
function validate() {
	var str=frm.t3.value;
        var str1=frm.t4.value;
	
        if(str!=str1)
		
		{
		str="New Password And Confirm Password Do not Match Please Enter Correct Data\n";
		alert(str); 
		return false;
		
		
	}return true;


}
</SCRIPT>
</head>
<body>
<form id="form1" method="post" onsubmit="return validate()" action="Password.jsp" name="frm">
  <h2 align="center" class="style2"><font color="#993300">Change Password!!!</font> </h2>
  <table width="499" height="284" border="1">
    <tr>
      <td width="217" height="51"><div align="center" class="style2">
          <h3><font color="#993300">Enter the name</font> </h3>
      </div></td>
      <td width="268"><label>
          <div align="center">
            <input type="text" name="unm" />
          </div>
        </label></td>
    </tr>
    <tr>
      <td height="48"><div align="center" class="style2">
          <h3><font color="#993300">Password</font></h3>
      </div></td>
      <td><div align="center">
          <input type="password" name="pass" />
      </div></td>
    </tr>
    <tr>
      <td height="45"><div align="center">
          <h3><font color="#993300">New Password </font></h3>
      </div></td>
      <td><div align="center">
          <input type="password" name="newpass" />
      </div></td>
    </tr>
    <tr>
      <td height="76"><div align="center">
          <h3><font color="#993300">Confirm Password</font> </h3>
      </div></td>
      <td><label>
          <div align="center">
            <input type="password" name="confirmnewpass" />
          </div>
        </label></td>
    </tr>
	
    <tr>
      <td height="52"><div align="center">
          <input type="submit" name="Submit" value="Change"/>
      </div></td>

	
	      <td><input type="reset" name="Submit2" value="Clear" /></td>
    </tr>
  </table>
  </form>
<a href="Index.jsp">Back</a>
</body>
</html>