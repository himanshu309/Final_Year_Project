
<%@page import="java.time.LocalDate"%>
<%@page import="java.time.LocalDateTime"%>
<%@ page import="java.io.File" %>
<!DOCTYPE html>  
<html>
<head>
<title>
Home
</title>
   
</head>
<body>
    <script type="text/javascript">
           var u,ss,req;
          function data()
       {
           u=document.getElementById("username").value;
           ss=document.getElementById("current").value;
           alert(u+""+ss);
           req=new  XMLHttpRequest();
           req.open("GET","Upload.jsp?username="+u+"&current="+ss,"true");
           req.send(null);
           req.onreadystatechange=responseAya;   
       }
          function responseAya()
        {
           if(req.readyState===4)
        {
            alert("MIS Uploaded Successfully ");
        }
   }
        
    </script>
    

    <link rel="stylesheet" type="text/css" href="Suraj/login2.css">
</head>
<body>
<div id="Wrapper">

         <div class="Header">
             <!-- Heading Moduel -->
             

                 

                  <div class="Heading">
                      <h1>Examination Seating Arrangment System</h1>

                  </div>

         </div><!--  End of Heading Module -->
         
 
        <div class="BlackStrip"><!-- Purple Strip -->
       <ul>
           <li> <a href="Examin_Home.jsp">Home</a></li>   
                 
                <li> <a href="aboutus.jsp">About us</a></li> 
                <li> <a href="changepwd.jsp">Change Password</a></li> 
                <li> <a href="index.jsp" col="white">logout</a></li>
          
          
       </ul>    
             
         
		  
		  

        </div><!-- End of Purple Strip -->
             <!-- <form action="Upload.jsp" method="post" enctype="multipart/form-data">-->
        <div class="MainModule"  ><!--Start of Middle Module -->
		
         
	        <div class="Top1"><!-- This is for the UserName and SelectSession -->
			<ul>
			  <li>
                     
			
			<div class="UserName"> <!-- This is for the UserName -->
			
			  
                            <input type="text" name="username" id="username" placeholder="User Name" />			
			</div></li><!-- This is End SelectSession -->
                        <br>
			
			<li>
			
			<div class="Session"><!-- This is for the  SelectSession -->
                            Uploading Date : <select name="current" id="current" class="menu" align="right" >
          
                                
                                
                                <%
                                    LocalDate dt=LocalDate.now();
                                
                                %>
                                <option><%=dt%></option>
             </select>			
			</div>
			
			</li><!-- End of the SelectSession -->
			
			</ul>
            
			</div><!-- End of The Session and UserName-->

			 <div class="Top2"><!-- This is for the Selection for File Upload -->
			<div class="upload"> 
        <form action="Upload.jsp" method="post" enctype="multipart/form-data">
            `             <div class="brw" style="margin-top:-100px; " >
                 
                <p>
               
                <H3> Select a file to upload:<br><input type="file" name="file" id="file" size="50" /></h3>
               <br>
               </h3>
                </p>
                <p style="margin-top:-50px; ">              
                    <input type="submit"  value="Upload File" align="center" onclick="data();"/>   
                </p>
             </div>
        </form>
             </div>
        
                 
               
                        </div>  
           </div>
                             
             </div><!-- End of The Session -->

			 </div>
    
			 <div class="Top3"><!-- This is for Panel -->
			
             </div><!-- End of The Session -->
     			 
			 
     <!-- End of the Components-->
       <div class="footer" >
             <div class="footer_copyright">
   
            <strong>Copyright</strong> &COPY; 2018 <a href="www.invertis.org">Invertis University</a> All Rights Reserved     
       </div>
         </div>  


</body>
</html>
