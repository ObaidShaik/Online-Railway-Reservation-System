<%@ page import="java.sql.*" %>
<%
String tname=request.getParameter("tname");
String sstation=request.getParameter("sstation");
String dstation=request.getParameter("dstation");
String ttype=request.getParameter("ttype");
String tc=request.getParameter("tc");
String at=request.getParameter("at");
String rt=request.getParameter("rt");
//String tname=request.getParameter("tname");
String sub1=request.getParameter("sub1");
String asub1=request.getParameter("asub1");
String dsub1=request.getParameter("dsub1");
String sub2=request.getParameter("sub2");
String asub2=request.getParameter("asub2");
String dsub2=request.getParameter("dsub2");
String distance=request.getParameter("distance");

String cost=request.getParameter("cost");

try{
	int trainid=0;
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/rail","root","root");
	System.out.println("connected");
	Statement st=con.createStatement();
	String sql="select max(trainno) from traininfo";
	ResultSet rs=st.executeQuery(sql);
	if(rs.next())
	{
int ss=rs.getInt(1);
trainid=ss+1;
	}
	else
	{
		trainid=1000;
	}
	String sql1="insert into traininfo values("+trainid+",'"+tname+"','"+sstation+"','"+at+"','"+dstation+"','"+rt+"','"+ttype+"','"+tc+"','"+sub1+"','"+asub1+"','"+dsub1+"','"+sub2+"','"+asub2+"','"+dsub2+"','"+distance+"','"+cost+"' )";
	//System.out.println(sql1);
	int i=st.executeUpdate(sql1);
	if(i>0)
	{
	
	response.sendRedirect("addtrain.jsp?TranAdded");

	}
	else
	{

out.println("train not added successfully");
	}
}
catch(Exception e)
{
	System.out.println(e);
}

%>