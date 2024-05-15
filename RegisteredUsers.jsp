<%@page import="java.sql.*,mypack.*"%>
<%
        

      
            Statement st = MyCon.getStatement();
            String q = "select * from REGISTRATION";  
            ResultSet rs = st.executeQuery(q);
            %>
             <center>
      <TABLE  width="1200" BORDER="1">
	  <TR >
                 <TD width="200"><strong>Username</strong></TD>
                 <TD width="200"><strong>UserPassword</strong></TD>
                  <TD width="200"><strong>ConfirmPassword</strong></TD>
                  <TD width="100"><strong>Address</strong></TD>
                   <TD width="300"><strong>EmailID</strong></TD>
                    <TD width="100"><strong>UserLevel</strong></TD>
                    <TD width="100"><strong>ID</strong></TD>
                    
                </TR>
               
            <%while(rs.next())
            {
            %>
            
      </table>
            </center>
            <center>
 <TABLE  width="1200" BORDER="1">
            
     <TR >
               <TD width="200"> <%= rs.getString(1) %>    </TD>          
               <TD width="200"> <%= rs.getString(2) %>    </TD>
               
               <TD width="200"> <%= rs.getString(3) %>    </TD>          
               <TD width="100"> <%= rs.getString(4) %>    </TD>
               <TD width="300"> <%= rs.getString(5) %>    </TD>          
               <TD width="100"> <%= rs.getString(6) %>    </TD>
               <TD width="100"> <%= rs.getString(7) %>    </TD>          
             
               
            </TR>
            </TABLE> 
                </center>
           <%   } %>
           <center>
            <p align="center"><input type="submit" name="print" onClick="window.print()" value="Print" ></p>
            <p align="center">  <a href ="Admin.jsp">Back</a></p></center>