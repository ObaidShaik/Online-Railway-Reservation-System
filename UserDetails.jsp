
<%@page import="java.sql.*,mypack.*"%>
<%
        

      
            Statement st = MyCon.getStatement();
            String q = "select * from registration";  
            ResultSet rs = st.executeQuery(q);
            %>
            <center>
      <TABLE  width="50%" BORDER="1">
	  <TR >
                 <TD width="150"><strong>Name</strong></TD>
                 <TD width="100"><strong>ID</strong></TD>
                  <TD width="150"><strong>Address</strong></TD>
                  <TD width="200"><strong>Email</strong></TD>
                </TR>
               
            <%while(rs.next())
            {
            %>
            
      </table>
            </center>
            <center>
 <TABLE  width="50%" BORDER="1">
            
     <TR >
               <TD width="150"> <%= rs.getString(1) %>    </TD>          
               <TD width="100"> <%= rs.getString(6) %>    </TD>
               
               <TD width="150"> <%= rs.getString(4) %>    </TD>          
               <TD width="200"> <%= rs.getString(5) %>    </TD>
               
            </TR>
            </TABLE> 
                </center>
           <%   } %>
           <center>
            <input type="submit" name="print" onClick="window.print()" value="Print" >
           <a href ="Admin.jsp">Back</a></center>