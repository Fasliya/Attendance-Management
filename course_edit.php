<?php include 'includes/header.php';?>

  
        <!-- partial -->
        <div class="main-panel">
          <div class="content-wrapper">
            <!-- Page Title Header Starts-->
            <div class="row page-title-header">
              <div class="col-12">
                <div class="page-header">
                  <h4 class="page-title">Edit Course Details</h4>
                  
                </div>
              </div>
              
            </div>
            <!-- Page Title Header Ends-->
            <div class="row">
              <div class="col-md-12 grid-margin">
                <div class="card">
                  <div class="card-body">
                    
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
$cName = $_POST['cName'];
$cCode =  $_POST['cCode'];
$cHall =  $_POST['cHall'];
$cDetails =  $_POST['cDetails'];
 
// Attempt insert query execution
$sql = "INSERT INTO courses (course_name, course_code, course_hall, course_details) VALUES ('$cName', '$cCode', '$cHall','$cDetails')";
if(mysqli_query($con, $sql)){
    echo "  <div style='width:100%;' class='alert alert-success' role='alert'>";
            echo "     <h2 >Successfully Added the Course !</h2>";
            echo " </div>";
} else{
    echo "ERROR: Something Went Wrong $sql. " . mysqli_error($link);
}
}

?>
                      
                      
                      <form action="" method="post">
              
          
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
                    <label class="col-sm-8 col-form-label">▶️  Enter a Course Code</label>

                 <div class="col-sm-9">
                              <input type="text" id=cCode name=cCode class="form-control" required/>
                            </div>
                    
                            </div></div>
                    </div>
                    
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
                              <input type="text" id=cDetails name=cDetails class="form-control" required/>
                            </div>
                
                    
                            </div></div>
                    </div>
       
                          <p id="please"><span style=" color:red">*</span> Please fill all the fields</p>
                          
                          <div style="margin-top:1%;" class="template-demo">
                
                <button class="btn btn-success btn-fw" type="submit" name='addCourse' id="addCourse">Edit Course</button>

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
    


<?php include 'includes/footer.php';?>