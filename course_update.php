<?php include 'includes/header.php';?>
     <?php
$coCode = $_GET['CoCode']; 
$sqlupdate="SELECT * from courses where course_code = '$coCode'";
$run_queryupdate=mysqli_query($con,$sqlupdate);

while ($row = mysqli_fetch_assoc($run_queryupdate)) {
                    $coId=$row['course_id'];
                     $coName=$row['course_name'];
                    $coCode=$row['course_code'];
                    $coHall=$row['course_hall'];
	                $coDetails=$row['course_details'];
	            
	 
 $nl = preg_replace('#<br\s*/?>#i', "\n", $coDetails);
	            
	                
}
  ?>
  <?php if(isset($_POST['upCourse'])){


// Escape user inputs for security
$cName = $_POST['cName'];
$cCode =  $_POST['cCode'];
$cHall =  $_POST['cHall'];
$cDetails =  $_POST['cDetails'];
 
 $content = nl2br($_POST['cDetails']);
$content = trim($content);
 
 
// Attempt insert query execution
$sql = "UPDATE courses SET course_name='$cName', course_code='$cCode', course_hall='$cHall', course_details='$content' WHERE course_id='$coId'";
if(mysqli_query($con, $sql)){
    echo "  <div style='position:absolute; width:100%;' class='alert alert-success' role='alert'>";
            echo "     <h2 align=right>Course Updated Successfully !</h2>";
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
                  <h4 class="page-title">Update Course</h4>
                  
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
                     
                     
                              <input type="text" id=cCode name=cCode class="form-control" value="<?php echo $coCode; ?>" required/>
                            </div>
                    
                            </div></div>
                    </div>
              
          
                 <div class="row">
                        <div class="col-md-6">
                            
                          <div class="form-group row">
                    <label class="col-sm-8 col-form-label">▶️  Course Name</label>
                        
                      
                            <div class="col-sm-9">
                              <input type="text" value="<?php echo $coName; ?>" id=cName name=cName class="form-control" required/>
                            </div>
                          
                    
                            </div></div></div>
                  
         
                   
                    
                    <div class="row">
                        <div class="col-md-6">
                          <div class="form-group row">
                    <label class="col-sm-8 col-form-label">▶️  Hall Name</label>

                    <div class="col-sm-9">
                              <input type="text" value="<?php echo $coHall; ?>" id=cHall name=cHall class="form-control" required/>
                            </div>
                
                    
                            </div></div>
                    </div>
                    
                      <div class="row">
                        <div class="col-md-6">
                          <div class="form-group row">
                    <label class="col-sm-8 col-form-label">▶️  Additional Course Details</label>

                <div class="col-sm-9">
                               <textarea rows="5" id=cDetails name=cDetails class="form-control" required><?php echo $nl; ?></textarea>
                            </div>
                
                    
                            </div></div>
                    </div>
       
                          <p id="please"><span style=" color:red">*</span> Please fill all the fields</p>
                          
                          <div style="margin-top:1%;" class="template-demo">
                
                <button class="btn btn-success btn-fw" type="submit" name='upCourse' id="upCourse">Update Course</button>
                

                          </div>
                          <br>
                           <a href="manage_course.php"><button class="btn btn-secondary btn-fw" type="button" name='back' id="back">Back</button></a>
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
$(document).ready(function() {

tinymce.remove('#cDetails');

});
</script>


<?php include 'includes/footer.php';?>