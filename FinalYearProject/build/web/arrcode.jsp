<%-- 
    Document   : arrcode
    Created on : Apr 9, 2018, 12:58:16 PM
    Author     : Admin
--%>

<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script type="text/javascript">
            alert("arrcode collededd);
            </script>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%@page import="java.sql.*;" %>        
<%
String block=(String)request.getParameter("block");
String rnumber=(String)request.getParameter("rnumber");
String course1=(String)request.getParameter("course1");
String course2=(String)request.getParameter("course2");
String deptt1=(String)request.getParameter("stream1");
String deptt2=(String)request.getParameter("stream2");
String semester1=(String)request.getParameter("semester1");
String semester2=(String)request.getParameter("semester2");

String column1=(String)request.getParameter("column1");
String column2=(String)request.getParameter("column2");

out.println(column1+""+column2);
    session.setAttribute("rnumber", rnumber);
    session.setAttribute("col1", column1);
    session.setAttribute("col2", column2);
//out.println(block);
//out.println(rnumber);
ArrayList<String> al1=new ArrayList<String>();
ArrayList<String> al2=new ArrayList<String>();
ArrayList<Integer> alt=new ArrayList<Integer>();

try{
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","root");

String s1="select * from MIS where course='"+course1+"'and Deptt='"+deptt1+"'and semester='"+semester1+"'";
String s2="select * from MIS where course='"+course2+"'and Deptt='"+deptt2+"'and semester='"+semester2+"'";

String stren="select rstrength from room where rnumber='"+rnumber+"'";
Statement st1=con.createStatement();
Statement st2=con.createStatement();
Statement stt=con.createStatement();

ResultSet rs1=st1.executeQuery(s1);
ResultSet rs2=st2.executeQuery(s2);
ResultSet rst=stt.executeQuery(stren);

while(rs1.next())
{
    al1.add(rs1.getString("Roll_No"));
}

while(rs2.next())
{
    al2.add(rs2.getString("Roll_No"));
             }
while(rst.next())
{
    alt.add(rst.getInt("rstrength"));
    
}
session.setAttribute("list1", al1);
session.setAttribute("list2", al2);
session.setAttribute("strength",alt);
}
catch(Exception e)
{
out.print(e.getMessage());
}
response.sendRedirect("arrcode1.jsp");
/*
int count=0;
int r1=0;
int r2=0;

if(rst.next())   //  bounded to call
{
    if(rst.getInt("rstrength")==42)
    {
      do{  
          count++;
             if(rs1.next() || rs2.next())
                {
                    if(rs1.next() && r1!=3)
                    {
                        r1++;
                        String rol0=rs1.getString(0);
                        String rol1=rs1.getString(1);
                        String rol2=rs1.getString(2);
                        String rol3=rs1.getString(3);
                        
                    }
                    if(rs2.next() && r2!=2)
                    {
                        r2++;
                         String roll2=rs2.getString("Roll_No");     
                        
                    }
                        String str="INSERT INTO ARRANGEMENT (rnumber,A1,B1,A2,B2,A3,B3,A4) VALUES (?,?,?,?,?,?,?,?)";
                        PreparedStatement ps=con.prepareStatement(str);
                        ps.setString(1, block);
                        ps.setString(2, roll1);
                        ps.setString(3, roll2);
                        
                }
      }while(count!=6);
    
    }
}
while(rs2.next())
{}
while(rst.next())
{
{
    out.println(count);
}
}

//pst.setString(1,block);
//pst.setString(2, );

*/
%>
        
 </body>
</html>
