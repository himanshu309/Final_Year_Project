<%-- 
    Document   : fillodatabase
    Created on : Apr 7, 2018, 12:26:38 AM
    Author     : Admin
--%>

<%@page import="org.apache.jasper.tagplugins.jstl.ForEach"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Fillo Database Logic </h1>
    </body>
</html>
<%@page import="java.sql.*;" %>
<%@page import="java.util.*;" %>
<%
    ArrayList id=(ArrayList)session.getAttribute("list1");
    ArrayList roll=(ArrayList)session.getAttribute("list2");
    ArrayList name=(ArrayList)session.getAttribute("list3");
    ArrayList course=(ArrayList)session.getAttribute("list4");
    ArrayList deptt=(ArrayList)session.getAttribute("list5");
    ArrayList semester=(ArrayList)session.getAttribute("list6");    
    try{
        Class.forName("oracle.jdbc.driver.OracleDriver");  
    Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","root");
                     
    Iterator itr=id.iterator();
    while(itr.hasNext())
    {
        String dd=(String)itr.next();
   //     out.print("Array  value is ---------->"+dd);
         String qs="insert into mis (Std_ID) values (?)";
         PreparedStatement pst=conn.prepareStatement(qs);
    
            pst.setString(1, dd);
             int k=pst.executeUpdate();
             if(k>0)
                      {
                          out.println("Done");
                          qs=null;
                          pst.close();
                      }
    }
    
    Iterator it=roll.iterator();
     while(it.hasNext())
    {
        String r=(String)it.next();
         String qs="insert into mis (Roll_No) values (?)";
                      PreparedStatement pst=conn.prepareStatement(qs);
    
                          pst.setString(1, r);
                      int l=pst.executeUpdate();
                      if(l>0)
                      {
                           qs=null;
                          pst.close();
                      }                   
     } Iterator iit=name.iterator();
     while(iit.hasNext())
    {
        String n=(String)iit.next();
         String qs="insert into mis (name) values (?)";
                      PreparedStatement pst=conn.prepareStatement(qs);
    
                          pst.setString(1, n);
                      int l=pst.executeUpdate();
                      if(l>0)
                      {
                           qs=null;
                          pst.close();
                      }                   
     }
    
      Iterator itrr=course.iterator();
     while(itrr.hasNext())
    {
        String c=(String)itrr.next();
         String qs="insert into mis (course) values (?)";
                      PreparedStatement pst=conn.prepareStatement(qs);
    
                          pst.setString(1, c);
                      int l=pst.executeUpdate();
                      if(l>0)
                      {
                           qs=null;
                          pst.close();
                      }                   
     } 
     Iterator itut=deptt.iterator();
     while(itut.hasNext())
    {
        String dep=(String)itut.next();
         String qs="insert into mis (Deptt) values (?)";
                      PreparedStatement pst=conn.prepareStatement(qs);
    
                          pst.setString(1, dep);
                      int l=pst.executeUpdate();
                      if(l>0)
                      {
                           qs=null;
                          pst.close();
                      }                   
     } Iterator its=semester.iterator();
     while(its.hasNext())
    {
        String ss=(String)its.next();
         String qs="insert into mis (semester) values (?)";
                      PreparedStatement pst=conn.prepareStatement(qs);
    
                          pst.setString(1, ss);
                      int l=pst.executeUpdate();
                      if(l>0)
                      {
                           qs=null;
                          pst.close();
                      }                   
     }
    
        }catch(Exception e)
        {
        out.println(e.getMessage());
         }
            %>
