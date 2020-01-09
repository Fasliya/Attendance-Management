<?php include 'includes/header.php';?>

   <?php
$clID = $_GET['clID']; 
$sqlupdate="SELECT * from class where cID = '$clID'";
$run_queryupdate=mysqli_query($con,$sqlupdate);

while ($row = mysqli_fetch_assoc($run_queryupdate)) {
                    $clName=$row['subject'];
                    $clHall=$row['hall'];
}
  ?>
  <?php if(isset($_POST['upClass'])){


// Escape user inputs for security
$clID = $_GET['clID']; 
$cName = $_POST['cName'];
$cHall =  $_POST['cHall'];
 
// Attempt insert query execution
$sql = "UPDATE class SET subject='$cName', hall='$cHall' WHERE cID='$clID'";
if(mysqli_query($con, $sql)){
    echo "  <div style='position:absolute; width:100%;' class='alert alert-success' role='alert'>";
            echo "     <h2 align=right>Batch Updated Successfully !</h2>";
            echo " </div>";
            echo "<meta http-equiv='refresh' content='3'>";
} else{
      echo "  <div style='position:absolute; width:100%;' class='alert alert-danger' role='alert'>";
            echo "     <h2 align=right>Something went wrong !</h2>";
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
                  <h4 class="page-title">Update Batch</h4>
                  
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
                    <label class="col-sm-8 col-form-label">▶️  Batch Name</label>
                        
                      
                            <div class="col-sm-9">
                              <input type="text" value="<?php echo $clName; ?>" id=cName name=cName class="form-control" required/>
                            </div>
                          
                    
                            </div></div></div>
                  
         
            
                    
                    <div class="row">
                        <div class="col-md-6">
                          <div class="form-group row">
                    <label class="col-sm-8 col-form-label">▶️  Hall Name</label>

                    <div class="col-sm-9">
                              <input type="text" value="<?php echo $clHall; ?>" id=cHall name=cHall class="form-control" required/>
                            </div>
                
                    
                            </div></div>
                    </div>
                    
                     
       
                          <p id="please"><span style=" color:red">*</span> Please fill all the fields</p>
                          
                          <div style="margin-top:1%;" class="template-demo">
                
                <button class="btn btn-success btn-fw" type="submit" name='upClass' id="upClass">Update Batch</button>
                

                          </div>
                          <br>
                           <a href="manage_class.php"><button class="btn btn-secondary btn-fw" type="button" name='back' id="back">Back</button></a>
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