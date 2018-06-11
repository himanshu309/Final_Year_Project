<%-- 
    Document   : studentcode
    Created on : Dec 26, 2017, 7:06:47 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.sql.*;" %>
<%
String std=request.getParameter("detail");

try{
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","root");
String sql="select * from mis where Std_ID='"+std+"'";
Statement st=con.createStatement();
ResultSet rs=st.executeQuery(sql);
while(rs.next())
{
    
            rs.getString(1);
}
}
catch(Exception e)
        {
    out.print(e.getMessage());
}

%>