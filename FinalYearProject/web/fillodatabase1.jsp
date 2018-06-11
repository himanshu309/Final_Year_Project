<%-- 
    Document   : fillodatabase1
    Created on : Apr 7, 2018, 5:56:07 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>

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
                     
    Iterator iditr=id.iterator();
    Iterator rollitr=roll.iterator();
    Iterator nameitr=name.iterator();
    Iterator courseitr=course.iterator();
    Iterator depttitr=deptt.iterator();
    Iterator semitr=semester.iterator();
    
    while(iditr.hasNext())
    {
        String dd=(String)iditr.next();
        if(rollitr.hasNext())
        {
             String r=(String)rollitr.next();
           if(nameitr.hasNext())
            {
                String n=(String)nameitr.next();
                if(courseitr.hasNext())
                {
                    String c=(String)courseitr.next();
                    if(depttitr.hasNext())
                    {
                        String d=(String)depttitr.next();
                        if(semitr.hasNext())
                        {
                            String s=(String)semitr.next();
                             String qs="insert into mis values (?,?,?,?,?,?)";
                             
                            PreparedStatement pst=conn.prepareStatement(qs);
    
                              pst.setString(1, dd);
                              pst.setString(2, r);
                              pst.setString(3, n);
                              pst.setString(4, c);
                              pst.setString(5, d);
                              pst.setString(6, s);
                                                         
                              pst.executeUpdate();
            
                              
                        }
                    }
                }
            }
        }
    }
  }
    
    catch(Exception e)
    {
        out.println(e.getMessage());
    }


 
%>

alert("Record Inserted Successfully");
<%
response.sendRedirect("ahome.jsp");
%>
    </body>
</html>
