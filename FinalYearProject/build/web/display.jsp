<%-- 
    Document   : display
    Created on : Apr 12, 2018, 10:32:50 AM
    Author     : Admin
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*;" %>
<%@page import="java.util.*;" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="Suraj/login2.css">
    </head>
    <body>
        <h1 style="margin-left: 200px">Arrangement Table</h1><br/>
            <caption><b>Use Ctrl + P to Print</b></caption>       
 <%
     try
     {
 String sel=(String)request.getParameter("disnum");
      Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","root");

String arr="select * from arrangement where rnumber='"+sel+"'";
String ss="select * from room where rnumber='"+sel+"'";
int size=0;
int row;
int count=0;
int i;
int j;
Statement stt=con.createStatement();
ResultSet rst=stt.executeQuery(ss);
while(rst.next())
{
    out.println(rst.getInt("rstrength"));
    size=rst.getInt("rstrength");
}
if(size==49)
{
    row=7;
}
else
{
    row=6;
}
ArrayList a=new ArrayList();
ArrayList b=new ArrayList();
//out.println(size+""+row);
Statement st=con.createStatement();
ResultSet rs=st.executeQuery(arr);
 while(rs.next())
 {
     a.add(rs.getString("A"));
     b.add(rs.getString("B"));
 }

 
 Iterator atr=a.iterator();
 Iterator btr=b.iterator();
 
 //This Code is for 49 Strength Class Room
if(row==7)
{
 %>
 
 <table border="2" id="table1">
            <tr>
                <td>Room Number</td>
                <td>Column A1</td>
                <td>Column B1</td>
            </tr>
    <%
 for(j=0;j<=6;j++)
{
        
        count++;
     %>
         
     <tr>
     <td><%=sel%></td>
     <td><%=atr.next().toString()%><br/></td>
     <td><%=btr.next().toString()%><br/></td>
     </tr>
         
     <%
 }
%>
 </table>
 <table style="" border="2" id="table2" >
    <tr>
           <td>Column A2</td>
        <td>Column B2</td>
    </tr>
    
<%
    for(i=7;i<=13;i++)
{
    %>
    <tr>
        <td>
            <%=a.get(i).toString()%>
        </td>
        
         <td>
        <%=b.get(i).toString()%>
        
        </td>
    </tr>   
  <%  
}
 %>
 
</table>
 
 <table border="2" name="table3" id="table3">
    <tr>
        <td>Column A3</td>
        <td>Column B3</td>
    </tr>
    
<%
    for(i=14;i<=20;i++)
{
    %>
    <tr>
        <td>
            <%=a.get(i).toString()%>
        </td>
        
         <td>
        <%=b.get(i).toString()%>
        
        </td>
    </tr>   
  <%  
}
 %>
 
</table>
 <table border="2" id="table4">
    <tr>
           <td>Column A4</td>
        
    </tr>
    
<%
    for(i=21;i<=27;i++)
{
    %>
    <tr>
        <td>
            <%=a.get(i).toString()%>
        </td>
    </tr>   
  <%  
}
 %>
 
</table>
 
 
     <%
         String sqe=a.get(28).toString();
         if(sqe!=null)
         {
             %>
             <script type="text/javascript">
                 
                 alert("There Are some more Values");
                 
             </script>
         <%
         
         }
         
         
     }


// This code is for 42 Strength Room

if(row==6)
{
 %>
 <table border="2" id="table6">
            <tr>
                <td>Room Number</td>
                <td>Column A1</td>
                <td>Column B1</td>
            </tr>
    <%
 for(i=0;i<=5;i++)
{
        
        count++;
     %>
         
     <tr>
     <td><%=sel%></td>
     <td><%=atr.next().toString()%><br/></td>
     <td><%=btr.next().toString()%><br/></td>
     </tr>
         
     <%
 }
%>
 </table>
 <table style="" border="2" id="table7" >
    <tr>
           <td>Column A2</td>
        <td>Column B2</td>
    </tr>
    
<%
    for(i=6;i<=11;i++)
{
    %>
    <tr>
        <td>
            <%=a.get(i).toString()%>
        </td>
        
         <td>
        <%=b.get(i).toString()%>
        
        </td>
    </tr>   
  <%  
}
//if(b.get(i))

 %>
 
</table>
 
 <table border="2" name="table3" id="table8">
    <tr>
           <td>Column A3</td>
        <td>Column B3</td>
    </tr>
    
<%
    for(i=12;i<=17;i++)
{
    %>
    <tr>
        <td>
            <%=a.get(i).toString()%>
        </td>
        
         <td>
        <%=b.get(i).toString()%>
        
        </td>
    </tr>   
  <%  
}
 %>
 
</table>
 <table border="2" id="table9">
    <tr>
           <td>Column A4</td>
        
    </tr>
    
<%
    for(i=18;i<=23;i++)
        
{
    %>
    <tr>
        <td>
            <%=a.get(i).toString()%>
        </td>
    </tr>   
  <%
     
}
 %>
 
</table>
 
 
     <%
         String sss=a.get(24).toString();
             if(sss!=null)
             {
     %>
     <script type="text/javascript">
         alert("Some More Values");
     </script>
         <%
             }
     }
}catch(Exception e)
{
out.println(e.getMessage());
}
 %> 




</body>
</html>