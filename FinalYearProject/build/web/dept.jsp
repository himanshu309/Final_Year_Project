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
			
                     
			<div class="UName"><!-- This is for the UserName -->
                            <div class="forgotpasspanel"><!-- This is for the forget passsword panel -->
			<form action="deptcode.jsp">
                                <h3><span>A</span>BOUT-<span>D</span>epartment</h3>
                         <input type="text" name="dname" placeholder="Department Name" ><br><br>
                         <input type="text" name="did" placeholder="  Department Id" >	<br><br>
                         <input type="text" name="dbranch" placeholder="Course Branch " ><br><br>
                         
                             <br /><p>
                    

                  
                  <b> Department Type:</b>
                
                    <input type="radio" name="dtype" value="ug" checked/>UG <input type="radio" name="dtype" value="pg" />PG
               <br />

                </p>

                          <input type="submit" name="submit" value="ADD-Department" align="center" id="forgotpassbutton"/> 
                    
                          <input type="submit" name="submit" value="DELETE-Department" align="center" id="forgotpassbutton"/><BR><BR> 
                          <input type="submit" name="submit" value="SEARCH-Department" align="center" id="forgotpassbutton"/> 
                           <input type="submit" name="submit" value="UPDATE-Department" align="center" id="forgotpassbutton"/> 
		 </form>	
                            </div>
                        </div>
                     
			</div><!-- End of The forget password panel-->

	
             </div><!-- End of The Session -->
			 </div>
			
     			 
			 
        </div><!-- End of the Components-->
           
         
			 
      

         <div class="footer" >
             <div class="footer_copyright">
   
            <strong>Copyright</strong> &COPY; 2018 <a href="www.invertis.org">Invertis University</a> All Rights Reserved     
       </div>
         </div>  

 </div>

</div>
</body>
</html>
