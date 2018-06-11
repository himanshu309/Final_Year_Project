<%-- 
    Document   : roomcode
    Created on : Dec 24, 2017, 12:51:09 PM
    Author     : Admin
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*;" %>
<%
int i;
String block=request.getParameter("block");
String rnumber=request.getParameter("rnumber");
String rstrength=request.getParameter("rstrength");
try{
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","root");
String str="insert into room values(?,?,?)";
PreparedStatement pst=con.prepareStatement(str);
pst.setString(1,block);
pst.setString(2,rnumber);
pst.setString(3,rstrength);

i=pst.executeUpdate();
if(i>0)
    {
     %>
    <script type="text/javascript">
           window.alert("Data Is Saved");
         </script>
     <%
       response.sendRedirect("room.jsp");
}
}
catch(Exception y)
        {
    out.print(block);
    out.print(rnumber);
    out.print(rstrength);
    out.print(y.getMessage());
}



%>