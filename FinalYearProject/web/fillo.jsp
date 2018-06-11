<%-- 
    Document   : fillo
    Created on : Apr 6, 2018, 12:59:46 AM
    Author     : Admin
--%>

<%@page import="java.sql.*"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.codoid.products.fillo.Connection"%>
<%@page import="com.codoid.products.fillo.Recordset"%>
<%@page import="com.codoid.products.fillo.Fillo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>

<%@page import="com.codoid.*;" %>
<%@page import="java.util.*;" %>

<%
    try{
    ArrayList al1=new ArrayList(); 
    ArrayList al2=new ArrayList(); 
    ArrayList al3=new ArrayList(); 
    ArrayList al4=new ArrayList(); 
    ArrayList al5=new ArrayList(); 
    ArrayList al6=new ArrayList(); 
Fillo f=new Fillo();
Connection con=f.getConnection("E:/ExamData/MIS.xlsx");
String query="Select * from MIS";

Recordset rs=con.executeQuery(query);

while(rs.next())
{
  out.print(rs.getField("name"));
    
    
    al1.add(rs.getField("Std_ID"));
    al2.add(rs.getField("Roll_No"));
    al3.add(rs.getField("Name"));
    al4.add(rs.getField("Course"));
    al5.add(rs.getField("Deptt"));
    al6.add(rs.getField("Semester"));
}
 session.setAttribute("list1", al1);
 session.setAttribute("list2", al2);
 session.setAttribute("list3", al3);
 session.setAttribute("list4", al4);
 session.setAttribute("list5", al5);
 session.setAttribute("list6", al6);
 response.sendRedirect("fillodatabase1.jsp");
   
    }catch(Exception e)
    {
        out.print(e.getMessage());
    }
%>