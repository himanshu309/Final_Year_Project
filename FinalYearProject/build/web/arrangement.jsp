<!DOCTYPE html>
<html>
<head>
<title>
Home
</title>
<style>
</style>

<script type="text/javascript">
    
    var xmlhttp;
    function sendData()
    {
        var block=document.getElementById("block").value;
        var rnumber=document.getElementById("rnumber").value;
        var course1=document.getElementById("course1").value;
        var course2=document.getElementById("course2").value;
        var stream1=document.getElementById("stream1").value;
        var stream2=document.getElementById("stream2").value;
        var semester1=document.getElementById("semester1").value;
        var semester2=document.getElementById("semester2").value;
        var column1=document.getElementById("column1").value;
        var column2=document.getElementById("column2").value;
        
        
        url="arrcode.jsp?block="+block+"&rnumber="+rnumber+"&course1="+course1+"&course2="+course2+"&stream1="+stream1+"&stream2="+stream2+"&semester1="+semester1+"&semester2="+semester2+"&column1="+column1+"&col2="+column2;
        xmlhttp=new XMLHttpRequest();
        xmlhttp.open("GET","arrcode.jsp?block="+block+"&rnumber="+rnumber,true);
        xmlhttp.onreadystatechange=gaya;
        xmlhttp.send(null);
      
      //  xmlhttp.send("block="+block+"&rnumber="+rnumber+"&course1="+course1+"&course2="+course2+"&stream1="+stream1+"&stream2="+stream2+"&semester1="+semester1+"&semester2="+semester2+"&column1="+column1+"&col2="+column2");
        
       
        alert(url);
    }
    function  gaya()
    {
        alert("gaya");
        if(xmlhttp.readyState===4)
        {
            alert("seat allocated");
//           window.location="arrcode.jsp";
        }
    }
</script> 
<link rel="stylesheet" type="text/css" href="Suraj/arrangement.css">
</head>
<body>
    
   <div id="Wrapper">

         <div class="Header"><!-- Heading Moduel -->        

                  <div class="Heading">
                      <h1 >Examination Seating Arrangment System</h1>

                  </div>

         </div><!--  End of Heading Module -->
         
 
        <div class="BlackStrip"><!-- Purple Strip -->
       <ul>
               <li> <a href="ahome.jsp">Home</a></li>
                <li> <a href="dept.jsp">Department</a></li>
		<li> <a href="room.jsp">Rooms</a></li>
                <li> <a href="arrangement.jsp">Arrangement</a></li>
                <li> <a href="student.jsp">Student Details</a></li>
                <li> <a href="view.jsp">View</a></li>
                <li> <a href="index.jsp">Logout</a></li>
       </ul>
  
        </div><!-- End of Purple Strip -->
        <!--Start of Middle Module -->
	
                            <!-- THIS IS FOR MAIN MODULE-->
                   
                             <!-- THIS IS END FOR MAIN MODULE-->
                             <div class="MainModule">
                   <form action="arrcode.jsp" method="GET">

             <div class="brw" >
                 <table width="200" border="0">
  <tr>
    <td>
        <table width="200" border="0"></table>
  <tr>
    <td>
      <table width="867" border="0">
        <tr>
          <th scope="col">Block</th>
          <th scope="col">
              
              <select id="block" name="block">
            <option>T</option>
            <option>M</option>
            <option>UV</option>
          </select></th>
          <th scope="col" style="width:100px; height:100px;">ROOM NO</th>
          <th scope="col">
              
              
              <select name="rnumber" id="rnumber" size="1">       
                       <%@page import="java.sql.*;"%>
    <%
       
               
        try{
        Class.forName("oracle.jdbc.driver.OracleDriver");  
    Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","root");
        
                  String query="select rnumber from room sort";
                  Statement s=con.createStatement();
                   ResultSet r=s.executeQuery(query);   
        while(r.next())
                  {
              
            %>
          
            <option><%=r.getString("rnumber")%></option>
                 
            <%
               }
                String rnum=r.getString("rnumber");
                String str="select * from room where rnumber='"+rnum+"'";
                ResultSet dr=s.executeQuery(str);
              %>
           
          </select></th>
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <th scope="col">STRENGTH</th>
          <th scope="col">
              <%
                  while(dr.next())
                {
            %>
              <input type="text" name="textfield3" value="<%=dr.getString("RSTRENGTH")%>"/>
              <%
}  
}                     catch(Exception e)
        {
            
        }               
              %>
          
          </th>
        </tr>
      </table>
        
        <DIV class="tbl">
             <table width="688" border="0"class="tbl">
         <tr>
           <th width="108" scope="col" class="tbl">&nbsp;</th>
           <th width="297" scope="col" class="tbl">&nbsp;</th>
           <th width="109" scope="col" class="tbl">&nbsp;</th>
         </tr>
         <tr>
           <td>COURSE-1</td>
           <td>
               <select id="course1" name="course1" class="tbl">
                 
                       <%@page import="java.sql.*;"%>
    <%           
        try{
        Class.forName("oracle.jdbc.driver.OracleDriver");  
    Connection c=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","root");
        
                      String q="select * from dept";
                  Statement st=c.createStatement();
                   ResultSet rs=st.executeQuery(q);                
        while(rs.next())
                  {
                  
            %>
          
            <option value="<%=rs.getString("DID")%>"><%=rs.getString("DID")%></option>
                  <%
                  }
                  rs.close();
                   c.close();
        }
          catch(Exception e)
        {
            out.print(e.getMessage());
        }
         %>         
                  
             </select>
                    </td>
           
           
           
           
           <td >COURSE-2</td>
           <td width="156">
               <select name="course2">  
                       <%@page import="java.sql.*;"%>
    <%           
        try{
        Class.forName("oracle.jdbc.driver.OracleDriver");  
    Connection c=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","root");
        
                      String q="select * from dept";
                  Statement st=c.createStatement();
                   ResultSet rs=st.executeQuery(q);                
        while(rs.next())
        {  
            %>
          
            <option value="<%=rs.getString("DID")%>"><%=rs.getString("DID")%></option>
                  <%
                  }
                  rs.close();
                   c.close();
        }
          catch(Exception e)
        {
            out.print(e.getMessage());
        }
         %>         
                  
                                 </select></td>
         </tr>
         <tr>
             
             
             <!--Select OF Streme-->
           <td>STREAM-1</td>
           <td>
               
               <select id="stream1" name="stream1" class="tbl">
               
     
    <%           
        try{
        Class.forName("oracle.jdbc.driver.OracleDriver");  
    Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","root");
        
                  String qs="select * from dept";
                  Statement st=conn.createStatement();
                   ResultSet rs=st.executeQuery(qs);                
        while(rs.next())
                  {
                  
              
            %>
          
            <option value="<%=rs.getString("dbranch")%>"><%=rs.getString("dbranch")%></option>
                  <%
                  }
        }
          catch(Exception e)
        {
            out.print(e.getMessage());
        }         
         %>    
                        
             </select>
           </td>
           <td>STREAM-2</td>
           <td>
               
               
               <select id="stream2" name="stream2" class="tbl">
                     
     
    <%           
        try{
        Class.forName("oracle.jdbc.driver.OracleDriver");  
    Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","root");
        
                      String qs="select * from dept";
                  Statement st=conn.createStatement();
                   ResultSet rs=st.executeQuery(qs);                
        while(rs.next())
                  {         
            %>
          
            <option value="<%=rs.getString("dbranch")%>"><%=rs.getString("dbranch")%></option>
                  <%
                  }
        }
          catch(Exception e)
        {
            out.print(e.getMessage());
        }         
         %>        
               </select></td>
         </tr>
         <tr>
             
           <td>Semester-1</td>
           <td>
               
            <select id="semester1" name="semester1" class="tbl">
             <option>I</option>
             <option>II</option>
             <option>III</option>
             <option>IV</option>
             <option>V</option>
             <option>VI</option>
             <option>VII</option>
             <option>VIII</option>
             </select>
                     </td>
           <td>Semester</td>
           <td>
               <select id="semester2" name="semester2" class="tbl">
             <option>I</option>
             <option>II</option>
             <option>III</option>
             <option>IV</option>
             <option>V</option>
             <option>VI</option>
             <option>VII</option>
             <option>VIII</option>
            </select></td>
         </tr>
       <!--
       <tr>
           <td>LABLE</td>
           <td>
             <input type="text" name="textfield" class="tbl" />
                      </td>
           <td>LABLE</td>
           <td><input type="text" name="textfield2" class="tbl" /></td>
       </tr>
       
       -->
         <tr>
           <td height="24">COLUM(A/B)</td>
           <td>
               <select id="column1" name="column1" class="tbl">
               <option>A</option>
               <option>B</option>
             </select>
                   </td>
           <td>COLUM(A/B)</td>
           <td><select id="column2" name="column2" class="tbl">
             <option>A</option>
             <option>B</option>
                      </select></td>
         </tr>
       </table>
            <br>
            <br>
            <center>
                <div class="btn" style="margin-left:-450px;">
                
                <input type="submit" value="Allocate" height="200px"/>   &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp

                <input type="submit" value="Save-us" /> &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp  <input type="reset" value="Reset" />                

            </div>
        </center> 
        </div>
               
               
        
               
     <div class="footer">
     
   <marquee>Developed by:- Suraj&nbsp&nbsp  Himanshu &nbsp&nbsp Vidisha &nbsp&nbsp Ankur</marquee> 
        </div> 
			
               
           </div>
                   </from>
        
               
         <!-- End of the Components-->
 
        
</div>
       
</body>
</html>