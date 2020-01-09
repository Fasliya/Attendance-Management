<?php include 'includes/header.php';?>
<?php
    if(isset($_POST['del_att'])){
        
        $date=$_POST['date'];
      
        $querydel="DELETE from attendance_deleted WHERE date='$date'";
        $run_querydel=mysqli_query($con,$querydel);
        
        if($run_querydel){
            echo "  <div style='position:absolute; width:100%;' class='alert alert-success' role='alert'>";
            echo "     <h2 align=right>Attendance Deleted Permenently !</h2>";
            echo " </div>";
            echo "<meta http-equiv='refresh' content='3'>";
        }else{
            echo "<div><h2>Something Went Wrong</h2></div>";
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
                  <h4 class="page-title">Previously Removed Attendance</h4>
                  
                </div>
              </div>
              
            </div>
            <!-- Page Title Header Ends-->
            <div class="row">
              <div class="col-md-12 grid-margin">
                <div class="card">
                  <div class="card-body">
                    
                      
                      
                      
  
                        <div class="row">
                        <div class="col-md-8">
                          <div class="form-group row">
                        
                              <h4 style="font-size:16px;" class="card-title"><span style="font-size:18px;">1️⃣ </span> Permanently Delete the Attendance by Date</h4></div></div></div>
   
   
                          
                          
                          
                          
                          <table class="table table-bordered">
                      <thead>
                                    <tr>
                                        <th>No.</th>
                                        <th >Class</th>
                                        <th >Attendence Marked Date</th>
                                        <th >Action</th>

                                    </tr>
                                </thead>
                            
                      
                          


                                <tbody id="myTable">

 <?php
                                $class1=$_GET['cID'];
                                
                                $queryget="select * from attendance_deleted a,class c WHERE a.cID=c.cID GROUP BY date";
                                
                                
                $query="select * from attendance_deleted a,class c WHERE a.cID=c.cID GROUP BY date";
                $count=1;
                $run_query=mysqli_query($con,$query);
                $count_row=mysqli_num_rows($run_query);
                //a href=""><i style="color:#e53935" class="fa fa-trash fa-2x" aria-hidden="true"></i><span //style="color:#e53935; margin-left:0.6em; font-size:20px">Delete</span></a>
                while ($row = mysqli_fetch_assoc($run_query)) {
                            $date=$row['date']; 
                            $hall=$row['hall'];
                            $Subject=$row['subject'];
                         
                            
                                ?>

                                   
                                   <tr>
                                    <form action="" method="post">
									<td ><?php echo $count;?></td>
									<td><?php echo $Subject;?></td>
                                    <td><?php echo $date;?></td>
									<td >
											    
									    <a href="att_view_deleted.php?cID=<?php echo $class1 ?>&date=<?php echo $date ?>"><input type="button" name="v_att" class="btn btn-primary btn-fw" value="View Attendance">
									    <input type="submit" name="del_att" class="btn btn-danger btn-fw" value="Permanently Delete"></td>
                                     <input type="hidden" name="date" value="<?php echo $date;?>">   
                                    
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
          <p>Attendance of the Selected Date Deleted Successfully !</p>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
    </div>
  </div>
  
  <?php    


									$date=$_POST['date'];
									   $class=$_GET['cID'];
        
        
                $queryget="select * from attend a,member m,attendance t where a.cID= '$class' and t.date='$date' and m.mID=a.mID and a.cID=t.cID and t.mID=m.mID";
                $run_query=mysqli_query($con,$queryget);
                
           
             
              ?>
						


    <script type="text/javascript">
        document.getElementById("back").onclick = function() {
            location.href = "../index.php";
        };
    </script>
</div>
<?php include 'includes/footer.php';?>