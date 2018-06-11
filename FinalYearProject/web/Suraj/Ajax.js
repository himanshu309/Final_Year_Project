function NoFileValidation(data){
  
    if(data==0)
    {
             $("#ExaminPanel").append(" <p> File Not Found...!!! </p>");
    }
    if(data==1)
    {  
        $("#ExaminPanel").empty();
        $("#ExaminPanel").append(" <p> File Not Found...!!! </p>");
    }
    
}
function FileCheckIn(Global,sum)
{
    
    if(sum == 0 )
    {
        alert("Hello");
        var arr=Global.split('*'); 
        var x=arr[0];
        var y=arr[1];
   $("#ExaminPanel p").replaceWith("<li><b>Uploaded By:</b>"+x+"</li><li><b>For Session:</b>"+y+"</li>");
    }
    if(sum == 1)
    {
        
    var arr=Global.split('*'); 
   var x=arr[0];
   var y=arr[1];
   $("#ExaminPanel").empty();
   $("#ExaminPanel").append("<li><b>Uploaded By:</b>"+x+"</li><li><b>For Session:</b>"+y+"</li>");
       
    }
    
}
  
  
  
$(document).ready(function(){
    

   BtnValidation();
    $("#ExaminButton").click(function (event){
        event.preventDefault();
        var HiddenValue=$("#HiddenV").val();
        var xhttp=new XMLHttpRequest();
        xhttp.open("POST","DeleteExamin.jsp",true);
        xhttp.setRequestHeader("Content-type","application/x-www-form-urlencoded");
        xhttp.send("HiddenV="+HiddenValue+"");
        xhttp.onreadystatechange=function(){
                                   if(xhttp.readyState===4 && xhttp.status===200)
                                    {
                                        var f=xhttp.responseText;
                                        //var f1=xhttp.responseText.localeCompare("No File To  Delete");
                                        
                                              if(f == 1)
                                                 {
                                                  
                                                     
                                                      $("#btnSubmit").prop("disabled", false);
                                                      $("#ExaminButton").prop("disabled",true );
                                                  NoFileValidation(f);
                                                 }
                                       if(f == 0)
                                         {
                                            alert("Error in File Uploading");
                                           $("#btnSubmit").prop("disabled", false);
                                           $("#ExaminButton").prop("disabled",true);
                   
                                         }
                                     }
        
        
                                            };
    });
    
    
    $("#btnSubmit").click(function (event) {
        event.preventDefault();

             var x=$("#UsernameExamin").val();
             var y=$("#menu1").val();
             var z=$("file").val();
             //alert(z);
           // Get form
              var form = $("#UploadForm")[0];
           
		// Create an FormData object
            var data = new FormData(form);
            
		// If you want to add an extra field for the FormData
     //        data.append("CustomField", "This is some extra data, testing");

		// disabled the submit button
      //  $("#btnSubmit").prop("disabled", true);
            if(x!=='' && y!=='' && z!=='')
         {
        $.ajax({
            type: "POST",
            enctype: 'multipart/form-data',
            url: "Upload.jsp?UsernameExamin="+x+"&session="+y+"&file="+z+"",
            data: data,
            processData: false,
            contentType: false,
            cache: false,
            timeout: 600000,
            success: function (data) {

               
                $("#btnSubmit").prop("disabled", true);
                $("#ExaminButton").prop("disabled", false);
                
                    FileCheckIn(data,0);
            }
            
        });
        }
        else{
            alert("Please Fill all the Details");
              $("#UsernameExamin").val("");
              y=$("#menu").val("");
              z=$("file").val("");
        }
    });


});

function BtnValidation(){
    var data;
    var Global=0;
    var HiddenValue="1";
        var xhttp=new XMLHttpRequest();
       
        xhttp.open("POST","CheckIn.jsp",true);
        xhttp.setRequestHeader("Content-type","application/x-www-form-urlencoded");
        xhttp.send("HiddenV="+HiddenValue+"");
        xhttp.onreadystatechange=function(){
                                   if(xhttp.readyState===4 && xhttp.status===200)
                                    {
                                        Global=xhttp.responseText;
                                       
                                      
                                        if(Global == 0)
                                        {
                                            
                                           $("#btnSubmit").prop("disabled",false);
                                           $("#ExaminButton").prop("disabled",true );
                                           
                                           NoFileValidation(Global);
                                       
                                          
                                        }
                                        if(Global.includes("*")) //File Present On the Server...!!!
                                        {
                                          
                                           $("#btnSubmit").prop("disabled",true);
                                           $("#ExaminButton").prop("disabled",false );
                                           var i=1;
                                          FileCheckIn(Global,i);
                                        }
                                        
                                           /*   if(x.localeCompare(y))
                                                 {
                                                   alert("FDV");
                                                      $("#btnSubmit").prop("disabled", true);
                                                      $("#ExaminButton").prop("disabled",false );
                                                 }
                                             if(x.localeCompare(z))
                                             { // Change Done Over Here...!!!
                                                alert("cdsvclgs");
                                                  $("#btnSubmit").prop("disabled",false);
                                                      $("#ExaminButton").prop("disabled",true );
                                             }*/
                                       
                                     }
        
        
                                            };
 
}
