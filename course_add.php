<?php include 'includes/header.php';?>
<?php if(isset($_POST['addCourse'])){
$db['db_host'] = 'localhost';
$db['db_username'] = 'u717897046_geniu';
$db['db_password'] = 'genius';
$db['db_name'] = 'u717897046_geniu';
foreach ($db as $key => $value) {
	define(strtoupper($key), $value);
}
$con = mysqli_connect(DB_HOST, DB_USERNAME, DB_PASSWORD, DB_NAME);
if ($con) {
   
} else {
	die('Error' . getMessage());
}


// Escape user inputs for security
$cCode =  $_POST['cCode'];
$cName = $_POST['cName'];
$cHall =  $_POST['cHall'];
$cDetails =  $_POST['cDetails'];
 
 $content = nl2br($_POST['cDetails']);
$content = trim($content);
 
// Attempt insert query execution
$sql = "INSERT INTO courses ( course_code, course_name, course_hall, course_details) VALUES ('$cCode', '$cName',  '$cHall','$content')";
if(mysqli_query($con, $sql)){
    echo "  <div style='position:absolute; width:100%;' class='alert alert-success' role='alert'>";
            echo "     <h2 align=right>Course Added Successfully !</h2>";
            echo " </div>";
     echo "<meta http-equiv='refresh' content='3'>";
} else{
    
       echo "  <div style='position:absolute; width:100%;' class='alert alert-danger' role='alert'>";
            echo "     <h2 align=right>Something Went Wrong !</h2>";
            echo " </div>";
    
   
}
}

?>
                      
        <!-- partial -->
        <div class="main-panel">
          <div class="content-wrapper">
            <!-- Page Title Header Starts-->
            <div class="row page-title-header">
              <div class="col-12">
                <div class="page-header">
                  <h4 class="page-title">Add a New Course</h4>
                  
                </div>
              </div>
              
            </div>
            <!-- Page Title Header Ends-->
            <div class="row">
              <div class="col-md-12 grid-margin">
                <div class="card">
                  <div class="card-body">
                    
                      
                      
                      <form action="" method="post">
              
          
                
         
                    <div class="row">
                        <div class="col-md-6">
                          <div class="form-group row">
                    <label class="col-sm-8 col-form-label">▶️  Course Code</label>

                 <div class="col-sm-9">
                     
                     <?php
                             
                        $str = '01234567891011121314151617181920212223242526';
                    
                        $shuffled = str_shuffle($str);
                    
                        $shuffled = substr($shuffled,1,4);

                    ?>
                              <input type="text" id=cCode name=cCode class="form-control" value="C<?php echo $shuffled; ?>" required/>
                            </div>
                    
                            </div></div>
                    </div>
                    
                     <div class="row">
                        <div class="col-md-6">
                            
                          <div class="form-group row">
                    <label class="col-sm-8 col-form-label">▶️  Enter Course Name</label>
                        
                      
                            <div class="col-sm-9">
                              <input type="text" id=cName name=cName class="form-control" required/>
                            </div>
                          
                    
                            </div></div></div>
                  
                    
                    
                    
                    <div class="row">
                        <div class="col-md-6">
                          <div class="form-group row">
                    <label class="col-sm-8 col-form-label">▶️  Enter Hall Name</label>

                    <div class="col-sm-9">
                              <input type="text" id=cHall name=cHall class="form-control" required/>
                            </div>
                
                    
                            </div></div>
                    </div>
                    
                      <div class="row">
                        <div class="col-md-6">
                          <div class="form-group row">
                    <label class="col-sm-8 col-form-label">▶️  Enter Additional Course Details</label>

                <div class="col-sm-9">
                              <textarea rows="5" id=cDetails name=cDetails class="form-control" required></textarea>
                            </div>
                
                    
                            </div></div>
                    </div>
       
                          <p id="please"><span style=" color:red">*</span> Please fill all the fields</p>
                          
                          <div style="margin-top:1%;" class="template-demo">
                
                <button class="btn btn-success btn-fw" type="submit" name='addCourse' id="addCourse">Add Course</button>
                
                 <button class="btn btn-secondary btn-fw" type="button" name='addDemo' id="addDemo">Add Demo Values</button>

                          </div>
            </form>
                      
                  </div>
                </div>
              </div>
            </div>
           
            </div>
          
          <!-- partial -->
        </div>
        <!-- main-panel ends -->
      </div>
      <!-- page-body-wrapper ends -->
    </div>
    
    <script> 
       $(document).ready(function(){
  
  $("#addDemo").click(function(){
    $("#cName").val("CIMA");
     $("#cHall").val("G3");
     $("#cDetails").val("CBA Certification Level with 10% discount");
  });
});
    </script>
<script>
$(document).ready(function() {

tinymce.remove('#cDetails');

});
</script>

<?php include 'includes/footer.php';?>