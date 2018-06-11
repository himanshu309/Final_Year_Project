<%-- 
    Document   : downloadcode
    Created on : Apr 16, 2018, 12:15:44 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.io.*;" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        
        
        <%    
  String filename = "MIS.xlsx";   
  String filepath = "e:\\";   
  response.setContentType("APPLICATION/OCTET-STREAM");   
  response.setHeader("Content-Disposition","attachment; filename=\"" + filename + "\"");   
  
  java.io.FileInputStream fileInputStream=new java.io.FileInputStream(filepath + filename);  
            
  int i;   
  while ((i=fileInputStream.read()) != -1) {  
    out.write(i);   
  }   
  fileInputStream.close();   
%>   
    </body>
</html>
