<?php include 'includes/header.php';?>

     
                  <?php
    if(isset($_POST['del_course'])){
        $coName=$_POST['coName'];
        $query="DELETE from courses WHERE course_name='$coName'";
        $run_query=mysqli_query($con,$query);
        
        if($run_query){
            echo "  <div style='position:absolute; width:100%;' class='alert alert-success' role='alert'>";
            echo "     <h2 align=right>Course Removed Successfully !</h2>";
            echo " </div>";
            echo "<meta http-equiv='refresh' content='3'>";
        }else{
              echo "  <div style='position:absolute; width:100%;' class='alert alert-danger' role='alert'>";
            echo "<h2 align=right>Course Removing Failed</h2>";
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
                    
                 
                  <h4 class="page-title">Manage Genius Courses</h4>
                  
                    
                    
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
$cCode =  $_POST['cCode'];
$cName = $_POST['cName'];
$cHall =  $_POST['cHall'];
$cDetails =  $_POST['cDetails'];
 
// Attempt insert query execution
$sql = "INSERT INTO courses (course_code, course_name,  course_hall, course_details) VALUES ('$cCode', '$cName',  '$cHall','$cDetails')";
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
                        <div class="col-md-10">
                            
                          <div class="form-group row">
                    <label class="col-sm-8 col-form-label">▶️  Update Courses</label>
                        
                      
                        
                        
                     
                        <br><br>
                        
                        
                        
                        
                           
                          
                          <table class="table table-bordered">
                      <thead>
                                    <tr>
                                        <th>No.</th>
                                        <th >Course Code</th>
                                        <th >Course Name</th>
                                        <th >Hall</th>
                                        <th >Course Details</th>
                                        <th>Action</th>

                                    </tr>
                                </thead>
                            
                      
                          


                                <tbody id="myTable">

 <?php
                                
                $query="select * from courses";
                $count=1;
                $run_query=mysqli_query($con,$query);
                $count_row=mysqli_num_rows($run_query);
                //a href=""><i style="color:#e53935" class="fa fa-trash fa-2x" aria-hidden="true"></i><span //style="color:#e53935; margin-left:0.6em; font-size:20px">Delete</span></a>
                while ($row = mysqli_fetch_assoc($run_query)) {
                            $coCode=$row['course_code'];
                            $coName=$row['course_name']; 
                            $coHall=$row['course_hall'];
                            $coDetails=$row['course_details'];
                         
                            
                                ?>

                                   
                                   <tr>
                                    <form action="" method="post">
									<td ><?php echo $count;?></td>
									<td><?php echo $coCode;?></td>
									<td><?php echo $coName;?></td>
                                    <td><?php echo $coHall;?></td>
                                    <td><?php echo $coDetails;?></td>
									<td >
									     <a href="course_update.php?CoCode=<?php echo $coCode;?>"><button type="button" class="btn btn-info btn-fw">Edit</button></a>
									    <input type="submit" name="del_course" class="btn btn-danger btn-fw" value="Delete"></td>
                                     <input type="hidden" name="coName" value="<?php echo $coName;?>">   
                                    
                                    </form>
								</tr>

 <?php $count++; }?>
                                </tbody>
                            </table>
                       
                   



               
          
    

<br>

     
 

                      
                      
                      
                      
             
              </div>
            </div>
           
            </div>
          
          <!-- partial -->
        </div>
        <!-- main-panel ends -->
      </div>
      <!-- page-body-wrapper ends -->
    </div>
      <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog modal-sm">
      <div class="modal-content">
        <div class="modal-header">
          
          <h4 style="color:blue" class="modal-title">Success !</h4>
            
           
        </div>
        <div class="modal-body">
          <p>Course Removed Successfully !</p>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
    </div>
  </div>

                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                          
                    
                            </div></div></div>
                  
         
                    
                          
                          <div style="margin-top:1%;" class="template-demo">
                
               

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