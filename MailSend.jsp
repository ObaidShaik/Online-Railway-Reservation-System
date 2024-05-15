<html>
    <%@page import ="java.io.*,java.util.*,javax.mail.*" %>
<%@page import="javax.mail.internet.*,javax.activation.*" %>
<%@page import="javax.servlet.http.*,javax.servlet.*" %>
   <%@page import="java.sql.*,mypack.*"%>
        
<body>
    <% 
    try
               {
String c=null;
 c=(String)session.getAttribute("pass");
 
     if(c!=null)
               {}
  else
     response.sendRedirect("userlogin.jsp");
 
 }
catch(Exception e)
               {
    response.sendRedirect("userlogin.jsp");
       }
    
     
   String email=request.getParameter("T1");
   String sub=request.getParameter("T2");
   String msg=request.getParameter("S1");
    String host = "smtp.gmail.com";
    String from = "freeprojects3@gmail.com";
    String pass = "33projects";
    String upass="33projects";
     try {
            Statement st = MyCon.getStatement();
            String q = "select * from Registration where eid='" +email+"'" ;
            ResultSet rs = st.executeQuery(q);
         //   out.println(pnr);
            out.println(q);
            
            
            
                  
           if (!rs.next()) {
               out.println("Invalid Values");
               return;
                  }
                     else{           
            upass = rs.getString("upass");
      
                       }
            
              //                       rs.close();
        } catch (Exception ex) {
            ex.printStackTrace();
            out.println(ex);
            return;
        }
      
    Properties props = System.getProperties();
    props.put("mail.smtp.starttls.enable", "true"); // added this line
    props.put("mail.smtp.host", host);
    props.put("mail.smtp.user", from);
    props.put("mail.smtp.password", pass);
    props.put("mail.smtp.port", "587");
    props.put("mail.smtp.auth", "true");

    
    String[] to = {email}; // added this line

    Session sessio = Session.getDefaultInstance(props, null);
    MimeMessage message = new MimeMessage(sessio);
    message.setFrom(new InternetAddress(from));

    InternetAddress[] toAddress = new InternetAddress[to.length];

    // To get the array of addresses
    

    for( int i=0; i < to.length; i++ ) { // changed from a while loop
        toAddress[i] = new InternetAddress(to[i]);
    }
    System.out.println(Message.RecipientType.TO);

    for( int i=0; i < toAddress.length; i++) { // changed from a while loop
        message.addRecipient(Message.RecipientType.TO, toAddress[i]);
    }
    message.setSubject(sub);
    message.setText(msg + "\t" + upass);
    Transport transport = sessio.getTransport("smtp");
    transport.connect(host, from, pass);
    transport.sendMessage(message, message.getAllRecipients());
    transport.close();
   out.println("Your old password has been sent to your email id.");
   out.println("Thank you");

%>
</body>
</html>