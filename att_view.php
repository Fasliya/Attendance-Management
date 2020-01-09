<?php include 'includes/header.php';?>

<?php 
    if(isset($_GET['cID'])){

        $class = $_GET['cID'];
    }
    
    ?>
    <?php 

if(isset($_POST['saveatt'])){
    
                $date=$_POST['atten_date'];
                $querynew="select * from attendance where date='$date'";
                $run_query_new=mysqli_query($con,$querynew);
                $count_row_new=mysqli_num_rows($run_query_new);
                
                if($count_row_new == 0){
            
                $class=$_POST['att_class'];
                $query="select * from attend a,member m where a.cID='$class' and m.mID=a.mID";
                $count=0;
                $run_query=mysqli_query($con,$query);
                $count_row=mysqli_num_rows($run_query);
    
                
                while ($row = mysqli_fetch_assoc($run_query)) {
                    
                    $std_id = $row['mID'];
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
	                   $status=$_POST[$std_id];
	                   // 
	                 
        
        $attend_query = "INSERT INTO attendance(mID,cID,status,date) VALUES( '$std_id','$class','$status',' $date ')";
        $create_attend_query = mysqli_query($con, $attend_query);
        if ($create_attend_query) {
            $count++;
		
	    }else{
	        echo "<div><h2>Something went wrong!</h2></div>"; 
	    }
                        
                }
if($count_row==$count){
            echo "  <div style='position:absolute; width:100%;' class='alert alert-success' role='alert'>";
            echo "     <h2 align=right>Successfully Added !</h2>";
            echo " </div>";
     echo "<meta http-equiv='refresh' content='3'>";
        }else{
           echo "<div><h2>Failed!</h2></div>"; 
        }    
    
   
}else{
     echo "  <div style='position:absolute; width:100%;' class='alert alert-danger' role='alert'>";
            echo "     <h2 align=right>Attendance Already Added !</h2>";
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
                  <h4 class="page-title">Add Attendance</h4>
                  
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
                        <div class="col-md-2">
                          <div class="form-group row">
                              <h4 style="font-size:18px;" class="card-title">1️⃣ <span style="color:red;">*</span> Pick a Date</h4>
                              
                              <input class="form-control" type="date" value="<?php echo date('Y-m-d');?>" name="atten_date" id="attendence_date">
   
                              
                              <input type="hidden" name="att_class1" value="<?php echo $class; ?>">
    
 
    <button style="display:none; background-color: #FFA726; border-radius: 8px; position: absolute;margin-top: -3%; margin-left: -68%;" class="btn orange" type="submit" name="date_submit"><span>Show</span></button>
                            </div></div></div>
   <br>
<div class="row">
                        <div class="col-md-8">
                          <div class="form-group row">
                        
                              <h4 style="font-size:16px;" class="card-title"><span style="font-size:18px;">2️⃣</span> Now you can Mark the Attendance</h4></div></div></div>
   
   
                          
                          
                          
                          
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
                 
               
                $query="select * from attend a,member m where a.cID= '$class' and m.mID=a.mID";
                $run_query=mysqli_query($con,$query);
                 $i=1;
                
                while ($row = mysqli_fetch_assoc($run_query)) {
                    $std_id = $row['mID'];
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
                                    <tr >
                                        <td ><?php echo $i;?></td>
                                        <td ><?php echo $std_id;?></td>
                                        <td ><?php echo $std_fName;?> <?php echo $std_lName;?></td>
                                        <td >

                                            <input style="color: 4CAF50" name="<?php echo $std_id ?>" type="radio" value="Present"><span style="color:#4CAF50"> Present</span>
                                            <input style="margin-left: 10%" name="<?php echo $std_id ?>" type="radio" value="Absent"><span style="color: #f44336"> Absent</span>

                                        </td>



                                        <?php $i++;}?>
                                    </tr>


                                </tbody>
                            </table>
                       
                   



               
          
    

<br>

        <div >
            
            <input type="hidden" name="att_class" value="<?php echo $class;?>">
            <button name="saveatt" id="saveatt" class="btn btn-primary btn-fw" type="submit"><span>Save Attendence</span></button>
        </div>
    </form>

                      <script>
                            $("form").submit(function () {
        var flag = true;
        $(':radio').each(function () {
            name = $(this).attr('name');
            if (flag && !$(':radio[name="' + name + '"]:checked').length) {
                alert('Please Mark Student No '+name + '\'s Attendance');
                flag = false;
            }
        });
        return flag;
    });
                      </script>
                      
                      
                      
                      
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
function myFunction() {
  // Declare variables
  var input, filter, table, tr, td, i, txtValue;
  input = document.getElementById("myInput");
  filter = input.value.toUpperCase();
  table = document.getElementById("myTable");
  tr = table.getElementsByTagName("tr");

  // Loop through all table rows, and hide those who don't match the search query
  for (i = 0; i < tr.length; i++) {
    td = tr[i].getElementsByTagName("td")[0];
    if (td) {
      txtValue = td.textContent || td.innerText;
      if (txtValue.toUpperCase().indexOf(filter) > -1) {
        tr[i].style.display = "";
      } else {
        tr[i].style.display = "none";
      }
    }
  }
}
</script>

    <script type="text/javascript">
        document.getElementById("back").onclick = function() {
            location.href = "../index.php";
        };
    </script>

<?php include 'includes/footer.php';?>