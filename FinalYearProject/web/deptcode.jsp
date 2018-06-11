<%-- 
    Document   : deptcode
    Created on : Dec 24, 2017, 2:59:56 AM
    Author     : Admin
--%>


<%@page import="javax.swing.JOptionPane"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*;"%>
<%
String dname=request.getParameter("dname");
String did=request.getParameter("did");
String dbranch=request.getParameter("dbranch");
String dtype=request.getParameter("dtype");
String ss=request.getParameter("submit");

try
{
 if(ss.equalsIgnoreCase("ADD-Department"))
    {
    
Class.forName("oracle.jdbc.driver.OracleDriver");
 Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","root");
String query="Insert into dept values(?,?,?,?)";
PreparedStatement pst=con.prepareStatement(query);
pst.setString(1,dname);
pst.setString(2,did);
pst.setString(3,dtype);
pst.setString(4,dbranch);
int i=pst.executeUpdate();

if(i>0)
    {
        %>
        <script type="text/javascript">
           window.alert("Data Is Saved");
         </script>
        <%
        response.sendRedirect("dept.jsp");
}
else
    {
       JOptionPane.showMessageDialog(null,"Something wrong,Try again");

}
 }
}
catch(Exception e)
        {
    out.print(e.getMessage());
    }

%>

<!-- Delete Code Is here-->

<%
try
    {
if(ss.equalsIgnoreCase("DELETE-Department"))
    {

    
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","root");

String del="Delete from dept where did='"+did+"'";

//out.print(del);
Statement st=con.createStatement();
int j=st.executeUpdate(del);

if(j>0)
    {
    
    response.sendRedirect("dept.jsp");
}
else
    {
   JOptionPane.showMessageDialog(null,"Something Wrong, Try Again");
    }
}
}
catch(Exception ee)
        {
        out.print(ee.getMessage());
}
    
%>

<!-- End of Delete Code-->

<!-- Search Code Is here-->
<%
try{
if(ss.equalsIgnoreCase("SEARCH-Department"))
    {
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","root");
Class.forName("oracle.jdbc.driver.OracleDriver");

 String search="select * from dept where did='"+did+"'";
Statement s=con.createStatement();
ResultSet rs=s.executeQuery(search);
while(rs.next())
    {
String dn=rs.getString(1);
String dt=rs.getString(2);
String di= rs.getString(3);

session.setAttribute("dname",dn);
session.setAttribute("dtype",dt);
session.setAttribute("did",di);
out.print(dt);
}
        response.sendRedirect("dept.jsp");
    }
}
catch(Exception er)
        {
    out.print(er.getCause());
}
%>
<!-- End of Search Code-->

<%
try{
if(ss.equalsIgnoreCase("UPDATE-Department"))
    {
      
    }
}
catch(Exception c)
        {
    out.print(c.getMessage());
}
%>
