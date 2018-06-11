<%-- 
    Document   : changepwd
    Created on : Apr 7, 2018, 9:56:23 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>
Home
</title>
<style>

</style>
<script>
function msn(){
alert("Cool");

  
}

</script> 
<link rel="stylesheet" type="text/css" href="Suraj/login2.css">
</head>
<body>
<div id="Wrapper">

         <div class="Header"><!-- Heading Moduel -->
               

                  <div class="Logo">
       
	   
                  </div>

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
           
        <div class="MainModule"  ><!--Start of Middle Module -->
		
            
	        <div class="Top1"><!-- This is for the UserName and SelectSession -->
			
			
			<div class="UName"><!-- This is for the UserName -->
                            <div class="forgotpasspanel"><!-- This is for the forget passsword panel -->
			
                                <h3><span>C</span>hange-<span>p</span>assword</h3>
                         <input type="text" name="" placeholder="Enter old Passworde" ><br><br>
                         <input type="text" name="" placeholder="Enter new Password" >	<br><br>
                         <input type="text" name="" placeholder="Re-type Password" ><br><br>
                          <input type="submit" value="Change Password" align="center" id="forgotpassbutton"/> 
			
			
			
            
			</div><!-- End of The forget passsword panel-->

			
             <form action="UploadServlet" method="post" enctype="multipart/form-data">
            
                             
              
             
              
                 
              
	
              </form>
             </div><!-- End of The Session -->
			 </div>
			
     			 
			 
        </div><!-- End of the Components-->

       <div class="footer" >
             <div class="footer_copyright">
   
            <strong>Copyright</strong> &COPY; 2010 <a href="www.invertis.org">Invertis University</a> All Rights Reserved     
       </div>
         </div>

 </div>

</div>
</body>
</html>