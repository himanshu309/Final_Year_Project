
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<script type="text/javascript" src="Suraj/Ajax.js"></script>
<%@ page import="java.io.*" %>

      <%  
           String x=(String)request.getParameter("username");
          String y=(String)request.getParameter("current");
           
           
          // out.println(x+""+y);
           
          File f=new File("E:/ExamData/Crediantial.txt");
          FileWriter fw=new FileWriter(f);
          PrintWriter pw=new PrintWriter(fw);
          pw.println("Current Username is----->"+x);
          pw.print("Current Session is----->"+y);
          pw.flush();
        //  FileWriter f1=new FileWriter("E:/ExamData/Credit.txt");
          
        
          //f1.write(x+" "+y);
         // f1.flush();
          //f1.close();
          fw.close();
          pw.close();
          
          
          MultipartRequest m = new MultipartRequest(request,"E:/ExamData");
          
       response.sendRedirect("Examin_Home.jsp");
         %>
      
      
    
   