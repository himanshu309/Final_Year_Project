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
         
 
        
        <div class="Strip"><!-- Purple Strip -->
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

        <div class="MainModule"  ><!--Start of Middle Module -->


	         <div class="Top1"><!-- This is for the UserName and SelectSession -->
                     <form action="roomcode.jsp">
			
			<div class="UName"><!-- This is for the UserName -->
                            <div class="forgotpasspanel"><!-- This is for the forget passsword panel -->
			
                                <h3><span>A</span>DD-<span>R</span>OOM</h3>
                        
                
                   <b>Select Block </b><input type="radio" name="block" value="T" checked>T-Block
                                         <input type="radio" name="block" value="M" >M-Block
                                          <input type="radio" name="block" value="UV">UV-Block
                                               <br /><BR>
                            <input type="text" name="rnumber" placeholder="  Room Number" ><br><br>
                         <input type="text" name="rstrength" placeholder="  Room Strength" >	<br><br>
                        
                    
 <input type="submit" value="ADD-ROOM" align="center" id="forgotpassbutton"/> 
                </p>

                         
                         
                            </div>
                        </div>
                     </form>
			</div><!-- End of The forget passsword panel-->

			
             
             </div><!-- End of The Session -->
			 </div>
			
     			 
			 
        <!-- End of the Components-->
           
         
			 
      

         <div class="footer" >
             <div class="footer_copyright">
   
            <strong>Copyright</strong> &COPY; 2018 <a href="www.invertis.org">Invertis University</a> All Rights Reserved     
       </div>
         </div>

 


</body>
</html>
