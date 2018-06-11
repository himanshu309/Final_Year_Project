<%-- 
    Document   : CheckIn
    Created on : 5 Jan, 2018, 11:28:59 PM
    Author     : SURAJPANDEY
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.io.*" %>
<%
        File file1=new File("E:/");
           if(file1.list().length>0)
                  {
         %>
         <%="1"%>    
         <%
           }
        else{
     %>
     <%="0"%>
    <%

   }
%>