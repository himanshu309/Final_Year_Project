<%-- 
    Document   : login
    Created on : Apr 3, 2018, 1:17:59 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<% 
String id=(String)request.getParameter("id");
String password=(String)request.getParameter("password");

try{

    Class.forName("oracle.jdbc.driver.OracleDriver");
 Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","root");
String query="select id,password from login where id='"+id+"'"
        + "and password='"+password+"'";
//out.print(query);
Statement st=con.createStatement();

ResultSet rs=st.executeQuery(query);
//out.print(rs);
while(rs.next())
{
   
    out.print((rs.getString("id").toString()));
    
if(id.equalsIgnoreCase("admin@invertis.org"))
{  
    response.sendRedirect("ahome.jsp");    
}
else if(id.equalsIgnoreCase("examination@invertis.org"))
{
  
    response.sendRedirect("Examin_Home.jsp");
}
else {
response.sendRedirect("index.jsp");
}
}
}
catch(Exception e)
{
    out.print(e.getMessage());
}
finally{

}
%>