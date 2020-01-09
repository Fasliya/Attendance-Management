<?php include 'includes/header.php';?>

<?php 
    if(isset($_GET['cID'])){

        $class = $_GET['cID'];
    }
    
    ?>
       <?php 

if(isset($_POST['add_class'])){
    
               
                $class=$_POST['class_name'];
                $course_id = $_POST['course1'];
                $hall = $_POST['hall'];
                $course_name = $_POST['att_course'];
        
        $class_query = "INSERT INTO class(course,subject,hall) VALUES( '$course_name','$class','$hall')";
        $create_class_query = mysqli_query($con, $class_query);
        if ($create_class_query) {
            echo " <div style='position:absolute; width:100%;' class='alert alert-success' role='alert'>";
            echo " <h2 align=right>New Batch Added Successfully !</h2>";
            echo " </div>";
             echo "<meta http-equiv='refresh' content='3'>";
		
	    }else{
            
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
                  <h4 class="page-title">Add a New Batch</h4>
                  
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
                        <div class="col-md-4">
                          <div class="form-group row">
                    <label class="col-sm-8 col-form-label">▶️ Choose a Course</label>
                        <select name="att_course" id="att_course" class="form-control">
                            <option value="" disabled selected>Choose a Course</option>

                                <?php 
                $query="select * from courses";
                $run_query=mysqli_query($con,$query);
                while ($row = mysqli_fetch_assoc($run_query)) {
                    $course_id = $row['course_id'];
                    $course_name = $row['course_name'];


                 ?>

                    
                            <option value="<?php echo $course_name; ?>"><?php echo $course_name; ?></option>
                           
                            
                            
                            <?php   }   ?>
                           
                        </select>
                    
                            </div></div></div>
                  
         
 <div class="row">
                        <div class="col-md-6">
                          <div class="form-group row">
                    <label class="col-sm-8 col-form-label">▶️  Enter a Batch Name</label>

                  <div class="col-sm-6">
                              <input id="name" class="form-control" type="text" name="class_name" placeholder="Enter Batch" required>
                            </div>
                       </div>
                  
                       
                       
                       
                            </div></div>
                        
                            
                            
                             <div class="row">
                        <div class="col-md-6">
                          <div class="form-group row">
                    <label class="col-sm-8 col-form-label">▶️  Enter a Hall Name</label>

                  <div class="col-sm-6">
                              <input id="hall" class="form-control" type="text" name="hall" placeholder="Enter Hall" required>
                            </div>
                       </div>
                       
                       <button name="add_class" type="submit" class="btn btn-primary btn-fw">Add a Batch
                    </button>
                    
                     <button name="addDemo" id="addDemo" type="button" class="btn btn-secondary btn-fw">Add Demo Value
                    </button>
                       
                       
                       
                            </div></div>
         
       
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
    $("#name").val("GE-Batch2-weekend");
     $("#hall").val("G3");
       $("#att_course").val("General Spoken English");
    
  });
});
    </script>
    
    
      
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