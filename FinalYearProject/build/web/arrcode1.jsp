<%-- 
    Document   : arrcode1
    Created on : Apr 10, 2018, 10:47:24 PM
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
        <%@page import="java.util.*;"%>
               
<%
response.sendRedirect("arrangement.jsp");
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","root");
ArrayList<String> all1=(ArrayList)session.getAttribute("list1");
ArrayList<String> all2=(ArrayList)session.getAttribute("list2");
//int size=(Integer.parseInt((String)session.getAttribute("strength")));
String block=(String)session.getAttribute("rnumber");
String col1=(String)session.getAttribute("col1");
String col2=(String)session.getAttribute("col2");


int size1=all1.size();
int size2=all2.size();

int count1=0;
int count2=0;

out.println(size1+""+size2);
String rol1;
String rol2;
Iterator itr1=all1.iterator();
Iterator itr2=all2.iterator();
try
{
    while(size1!=count1 || size2!=count2)
    {
        if(itr1.hasNext() || itr2.hasNext())
            
        {
            //out.println("itr called");
         try
            {
                rol1=(String)itr1.next();
                count1++;
            }
         catch(NoSuchElementException e)
            {
                rol1="";
            }
            try
            {
                rol2=(String)itr2.next();
                count2++;
            }
            catch(NoSuchElementException eee)
            {
                rol2="";
            }
    
            //rol=(String)itr2.next();
 //   out.println("col-->"+col1+""+col2);
            if(col1=="A" && col2=="B")
            {
                out.println("Column Called");
                    String str="INSERT INTO ARRANGEMENT (rnumber,A,B) VALUES (?,?,?)";
                        PreparedStatement ps=con.prepareStatement(str);
                        ps.setString(1, block);
                        ps.setString(2, rol1);
                        ps.setString(3, rol2);
                        ps.executeUpdate();
            }
           else 
                {
                     String str="INSERT INTO ARRANGEMENT (rnumber,A,B) VALUES (?,?,?)";
                        PreparedStatement ps=con.prepareStatement(str);
                        ps.setString(1, block);
                        ps.setString(2, rol2);
                        ps.setString(3, rol1);
                        ps.executeUpdate();
        
                }

        }

    }
}
catch(Exception wq)
{
    out.println(wq.getMessage());
}
//out.println(all1);
//out.println(all2);

%>
    </body>
</html>
