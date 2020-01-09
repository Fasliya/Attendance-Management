<?php include 'includes/header.php';?>

  <?php
    if(isset($_POST['del_class'])){
        $coName=$_POST['clID'];
        $query="DELETE from class WHERE cID='$clID'";
        $run_query=mysqli_query($con,$query);
        
        if($run_query){
            echo "  <div style='position:absolute; width:100%;' class='alert alert-success' role='alert'>";
            echo "     <h2 align=right>Class Removed Successfully !</h2>";
            echo " </div>";
            echo "<meta http-equiv='refresh' content='3'>";
        }else{
            echo "  <div style='position:absolute; width:100%;' class='alert alert-danger' role='alert'>";
            echo "     <h2 align=right>Class Removing Failed !</h2>";
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
                  <h4 class="page-title">Manage Genius Batch</h4>
                  
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
                        <div class="col-md-10">
                            
                          <div class="form-group row">
                    <label class="col-sm-8 col-form-label">▶️  Update Batch</label>
                        
                      
                        
                        
                        
                        <br><br>
                        
                        
                        
                        
                           
                          
                          <table class="table table-bordered">
                      <thead>
                                    <tr>
                                        <th>No.</th>
                                        <th >Class ID</th>
                                        <th >Course</th>
                                        <th >Hall</th>
                                        <th >Batch Name</th>
                                        <th>Action</th>

                                    </tr>
                                </thead>
                            
                      
                          


                                <tbody id="myTable">

 <?php
                                
                $query="select * from class";
                $count=1;
                $run_query=mysqli_query($con,$query);
                $count_row=mysqli_num_rows($run_query);
                //a href=""><i style="color:#e53935" class="fa fa-trash fa-2x" aria-hidden="true"></i><span //style="color:#e53935; margin-left:0.6em; font-size:20px">Delete</span></a>
                while ($row = mysqli_fetch_assoc($run_query)) {
                            $clID=$row['cID'];
                            $clCourse=$row['course'];
                            $clHall=$row['hall'];
                            $clSubject=$row['subject'];
                         
                            
                                ?>

                                   
                                   <tr>
                                    <form action="" method="post">
									<td ><?php echo $count;?></td>
                                    <td><?php echo $clID;?></td>
                                    <td><?php echo $clCourse;?></td>
                                    <td><?php echo $clHall;?></td>
                                    <td><?php echo $clSubject;?></td>
									<td >
									     <a href="class_update.php?clID=<?php echo $clID;?>"><button type="button" class="btn btn-info btn-fw">Edit</button></a>
									    <input type="submit" name="del_class" class="btn btn-danger btn-fw" value="Delete"></td>
                                     <input type="hidden" name="clID" value="<?php echo $clID;?>">   
                                    
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