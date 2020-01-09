<?php include 'includes/header.php';?>
<?php 
    if(isset($_GET['cID'])){

        $class = $_GET['cID'];
        $date =  $_GET['date'];
    }
    
    ?> 
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  
        <!-- partial -->
        <div class="main-panel">
          <div class="content-wrapper">
            <!-- Page Title Header Starts-->
            <div class="row page-title-header">
              <div class="col-12">
                <div class="page-header">
                  <h4 class="page-title">View Previously Deleted  Attendance</h4>
                  
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
                               <h4 style="font-size:18px;" class="card-title">1️⃣  Previously deleted attendance </h4>
                               
                              </div> <div class="form-group row">
    <input disabled="disabled" style="width:40%;" class="form-control" type="text" value="<?php echo $date; ?>" name="atten_date" id="attendence_date">
    <input type="hidden" name="att_class1" value="<?php echo $class; ?>">
    
    
    
        
                              <br></div></div></div>

   
                            
                            
                            
                            
    
  
  
     <form action="" method="post">
         <br>
         
         
         
         <div class="row">
             
             
                 
             <?php
$cID = $_GET['cID']; 
$sql="SELECT * from attendance_deleted where cID = '$cID' && date='$date'";

if ($result=mysqli_query($con,$sql))
  {
  // Return the number of rows in result set
  $rowcount=mysqli_num_rows($result);
  

  }


?>
             
             <?php
$cID = $_GET['cID']; 
$sql1="SELECT * from attendance_deleted where cID = '$cID' && date='$date' && status = 'Present'";

if ($result1=mysqli_query($con,$sql1))
  {
  // Return the number of rows in result set
  $rowcount1=mysqli_num_rows($result1);
  

  }


?>
             
              <?php
$cID = $_GET['cID']; 
$sql2="SELECT * from attendance_deleted where cID = '$cID' && date='$date' && status = 'Absent'";

if ($result2=mysqli_query($con,$sql2))
  {
  // Return the number of rows in result set
  $rowcount2=mysqli_num_rows($result2);
  

  }


?>
             
              <div  class="col-md-4 d-flex align-items-stretch grid-margin">
                <div class="row flex-grow">
                  <div  class="col-12">
                    <div  class="card">
                      <div class="card-body">
                          
                        <h4 style="text-align:center; font-size:18px;" class=".display-4 text-primary ">Total Students</h4>
                          
                           <h4 style="text-align:center; font-size:18px;" class="card-title"><?php echo $rowcount ?></h4>
                          
                          
                          
                        </div></div></div></div></div>
         
         
             <div class="col-md-4 d-flex align-items-stretch grid-margin">
                <div class="row flex-grow">
                  <div class="col-12">
                    <div class="card">
                      <div class="card-body">
                          
                        <h4 style="text-align:center; font-size:18px;" class=".display-4 text-success ">Present Students</h4>
                          
                           <h4 style="text-align:center; font-size:18px;" class="card-title"><?php echo $rowcount1 ?></h4>
                          
                          
                          
                        </div></div></div></div></div>
             
             <div class="col-md-4 d-flex align-items-stretch grid-margin">
                <div class="row flex-grow">
                  <div class="col-12">
                    <div class="card">
                      <div class="card-body">
                          
                        <h4 style="text-align:center; font-size:18px;" class=".display-4 text-danger">Absent Students</h4>
                          
                           <h4 style="text-align:center; font-size:18px;" class="card-title"><?php echo $rowcount2 ?></h4>
                          
                          
                          
                        </div></div></div></div></div>
         
         
         
         
         
         
         
         
         </div>
         
         
          <div class="row">
                        <div class="col-md-8">
         
         <h4 style="font-size:16px;" class="card-title"><span style="font-size:18px;">2️⃣</span> View the Attendance</h4>
         
        
         
          <table class="table table-bordered">
                      <thead>
                                     <tr>
                                        <th>No.</th>
                                        <th >Student No.</th>
                                        <th >Student Name</th>
                                        <th >Status</th>

                                    </tr>
                                </thead>
                            
                      
                          


                                <tbody id="myTable">
 <?php 
                 $class=$_GET['cID'];
                 $date=$_GET['date'];
               
                $query="select * from attend a,member m,attendance_deleted t where a.cID= '$class' and t.date='$date' and m.mID=a.mID and a.cID=t.cID and t.mID=m.mID";
                $run_query=mysqli_query($con,$query);
                
                 $i=1;
             

                while ($row = mysqli_fetch_assoc($run_query)) {
                    $std_id = $row['mID'];
                    $status=$row['status'];
	                   $std_fName = $row['fName'];
	                   $std_lName = $row['lName'];
	                   $std_fullName = $row['fullName'];
	                   $std_address = $row['address'];
	                   $std_dob = $row['dob'];
	                   $std_nic = $row['nic'];
	                   $std_email = $row['email'];
	                   $std_phone = $row['phone'];
	                   $std_gender = $row['gender'];
	                   $std_joined = $row['joined'];
	                   $std_emgPhone = $row['emgphone'];
	                   $std_course = $row['course'];
	                   $std_cName = $row['coursename'];
	                   $source = $row['subjects'];
	                   $std_subjects= explode("|", $source);
	                   $std_image = $row['image'];
	              
	                   
                 ?>
                                    <tr>
                                        <td><?php echo $i;?></td>
                                        <td><?php echo $std_id;?></td>
                                        <td><?php echo $std_fName;?> <?php echo $std_lName;?></td>
                                        <td>
                                        <?php
                                        if($status=="Present"){  ?>
                                           <input disabled='disabled' style="color: 4CAF50" name="<?php echo $std_id ?>" type="radio" value="Present" <?php echo "checked"?>><span style="color:#4CAF50"> Present</span>
                                            <input disabled='disabled' style="margin-left: 10%" name="<?php echo $std_id ?>" type="radio" value="Absent" ><span style="color: #f44336"> Absent</span> 
                                      <?php  }else{ ?>
                                           <input disabled='disabled' style="color: 4CAF50" name="<?php echo $std_id ?>" type="radio" value="Present"><span style="color:#4CAF50"> Present</span>
                                            <input disabled='disabled' style="margin-left: 10%" name="<?php echo $std_id ?>" type="radio" value="Absent" <?php echo "checked"?>><span style="color: #f44336"> Absent</span> 
                                       <?php  }
                                            
                                            ?>
                                            

                                        </td>



              
                                    </tr>
                          <?php $i++;}?>

                                </tbody>
                            </table>
                 
                 



                
       
     <br>



        <div>
           
            <input type="hidden" name="att_class" value="<?php echo $class;?>">
            <input type="hidden" name="att_date" value="<?php echo $date;?>">
            <a href="del_att_view.php?cID=<?php echo $cID ?>"><button name="back" id="back" class="btn btn-info btn-fw" type="button"><span>Back</span></button></a>
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
      </div>
<?php include 'includes/footer.php';?>