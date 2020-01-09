<?php include 'includes/header.php';?>
<?php if(isset($_POST['sub'])){
    $subj=$_POST['sub'];
    $attCourse=$_POST['att_course'];
    $attClass=$_POST['att_class'];
    
    if($subj=="attView"){
        //header("Location:att_view.php?cID=$cID");
        echo "<script type='text/javascript'> document.location = 'att_view.php?cID=$attClass'; </script>";
    }else if($subj=="attEdit"){
        //header("Location:att_edit.php?cID=$attClass");
         echo "<script type='text/javascript'> document.location = 'att_edit.php?cID=$attClass'; </script>";
        
    }else if($subj=="attDel"){
       // header("Location:del_att.php?cID=$attClass");
        echo "<script type='text/javascript'> document.location = 'del_att.php?cID=$attClass'; </script>";
        
    }else if($subj=="attDelView"){
       // header("Location:del_att_view.php?cID=$attClass");
        echo "<script type='text/javascript'> document.location = 'del_att_view.php?cID=$attClass'; </script>";
    }



}?>
  
        <!-- partial -->
        <div class="main-panel">
          <div class="content-wrapper">
            <!-- Page Title Header Starts-->
            <div class="row page-title-header">
              <div class="col-12">
                <div class="page-header">
                  <h4 class="page-title">Dashboard</h4>
                  
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
                          </div></div>
                  
         
 <div class="row">
                        <div class="col-md-6">
                          <div class="form-group row">
                    <label class="col-sm-9 col-form-label">▶️  Choose the Batch to Manage Attendance</label>


                
                        <select name="att_class" id="att_class" class="form-control">
                            <option value="" disabled selected>Choose Your Batch</option>
                            
                            
                            <?php 
                $query="select * from class";
                $run_query=mysqli_query($con,$query);
                $name=mysqli_error($run_query);
                
                while ($row = mysqli_fetch_assoc($run_query)) {
                    $coID = $row['cID'];
                    $subject = $row['subject'];

                 ?>
                            <option value="<?php echo $coID; ?>"><?php echo $subject; ?></option>

                       <?php   }   ?>

                        </select>
                            </div></div>
                    </div>
       
                          <p id="psc"><span style=" color:red">*</span> Please select the Course and Class to Get Started</p>
                          
                          <div style="margin-top:1%;" class="template-demo">
                <button type="submit" name="sub" value="attView" class="btn btn-primary btn-fw" id="add" name="add">Add Attendance
                    </button>
                
                <button type="submit" name="sub" value="attEdit"  class="btn btn-info btn-fw" id="view">View / Edit Attendance
                </button>

                <button type="submit" name="sub" value="attDel"  class="btn btn-danger btn-fw" id="del">Remove Attendance
                </button>
                
                <button class="btn btn-success btn-fw" value="attDelView"  name="sub" type="submit" id="cadd">View Removed Attendance
                </button>

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