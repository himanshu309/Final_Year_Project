<%-- 
    Document   : view
    Created on : Apr 11, 2018, 11:22:51 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*;"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <div class="MainModule">
    <center>
        <h1 Style="font-size: 50px;  color:Blue; font-family:initial;">Select Class</h1>
    </center>
        <%        
        Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","root");

%>
<form action="display.jsp">
    <center>
     <select name="disnum" id="disnum" size="1" style="border:1px solid black; border-radius:10PX; height:50px;  background-color:white; width: 530px; color:black; font-size: 16px;">       

   
  <%     
                  String query="select rnumber from room sort";
                  Statement s=con.createStatement();
                   ResultSet r=s.executeQuery(query);   
        while(r.next())
                  {
              
            %>
          
           <option><%=r.getString("rnumber")%></option>
                 
            <%
               }
               %>
           
          </select>
               <br><br>
               <input type="submit" value="Get Arrangement" style=" color:#fff; background-color: #428bca; border-color: #357ebd; width: 150px; height: 30px; -webkit-border-radius:5px;-o-border-radius:5px; -moz-border-radius:5px; font-weight:bolder;"/></center>
</form>        
         </div>
               <style>
                   body{
background-image:url("Suraj/s.jpg");
width:100%;
height:100%;
border-bottom-left-radius: 25px;
border-bottom-right-radius: 25px;

}
               </style>
    </body>
</html>
