<?php 
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

?>

<!DOCTYPE html>
<html lang="en">
<head>
<title>Genius</title>
    <link rel="icon" href="../../favicon/favicon.ico">
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->

<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->
    <style>
    
       @import url('https://fonts.googleapis.com/css?family=Lexend+Deca|Ubuntu&display=swap');
    @import url('https://fonts.googleapis.com/css?family=Quicksand&display=swap');
        
                
.no-js #loader { display: none;  }
.js #loader { display: block; position: absolute; left: 100px; top: 0; }
.se-pre-con {
	position: fixed;
	left: 0px;
	top: 0px;
	width: 100%;
	height: 100%;
	z-index: 9999;
	background: url("http://smallenvelop.com/wp-content/uploads/2014/08/Preloader_2.gif") center no-repeat #fff;
}


        
    </style>
</head>
<body>
    <div class="se-pre-con"></div> 
    

    
    <?php 

if(isset($_POST['add_class'])){
    
               
                $class=$_POST['class_name'];
                $course_id = $_POST['course1'];
        
        $class_query = "INSERT INTO class(course,subject) VALUES( '$course_id','$class')";
        $create_class_query = mysqli_query($con, $class_query);
        if ($create_class_query) {
            echo " <div style='position:absolute; width:100%; z-index:+1000;' class='alert alert-success' role='alert'>";
            echo " <h2 align=center>Successfully Added !</h2>";
            echo " </div>";
		
	    }else{
	        echo "<div><h2>Something went wrong!</h2></div>"; 
	    }

    
   
}
 
    
?>


	<div class="container-contact100">
		<div style="height: 657px" class="wrap-contact100">
			<form action="" method="post" style="position: relative; right:4%" class="contact100-form validate-form">
				<span style="font-family:'Lexend Deca';" class="contact100-form-title">
					Add a Class
				</span>

                <br>
                
                <div class="wrap-input100">
					<div class="label-input100">Select a Course</div>
					<div>
						<select class="js-select2" name="course1">
							<option value="" disabled selected>Please select</option>
                            
                            <?php 
                            
                $query="select * from courses";
                $run_query=mysqli_query($con,$query);
                while ($row = mysqli_fetch_assoc($run_query)) {
                    $course_id = $row['course_id'];
                    $course_name = $row['course_name'];


                 ?>
                            
							<option value="<?php echo $course_id; ?>"> <?php echo $course_name; ?>   </option>
							<?php   }   ?>
						</select>
						<div class="dropDownSelect2"></div>
					</div>
					<span class="focus-input100"></span>
				</div>


              
                
                
				<div class="wrap-input100 validate-input" data-validate="Class is required">
					<label class="label-input100" for="cname">Enter Class Name</label>
					<input id="name" class="input100" type="text" name="class_name" placeholder="Enter Class">
					<span class="focus-input100"></span>
				</div>



				<br>		<br>		<br>
				

				<div class="container-contact100-form-btn">
					<button name="add_class" type="submit" class="contact100-form-btn">
						Add Class
					</button>
				</div>
                
                <br>
                <div class="container-contact100-form-btn">
					<button id="back" style="background-color: #757575" class="contact100-form-btn">
						Back
					</button>
				</div>

				
			</form>

			<div class="contact100-more flex-col-c-m" style="background-image: url('images/bg-01.jpg');">
			</div>
		</div>
	</div>



<script>	
    
   setTimeout(function() {
    $('.se-pre-con').fadeOut('fast');
}, 1000);
</script>

<!--===============================================================================================-->
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
	<script>
		$(".js-select2").each(function(){
			$(this).select2({
				minimumResultsForSearch: 20,
				dropdownParent: $(this).next('.dropDownSelect2')
			});
		})
		$(".js-select2").each(function(){
			$(this).on('select2:open', function (e){
				$(this).parent().next().addClass('eff-focus-selection');
			});
		});
		$(".js-select2").each(function(){
			$(this).on('select2:close', function (e){
				$(this).parent().next().removeClass('eff-focus-selection');
			});
		});

	</script>
    
    
     <script type="text/javascript">
        document.getElementById("back").onclick = function() {
            location.href = "../index.php";
        };

    </script>

<!--===============================================================================================-->
	<script src="vendor/daterangepicker/moment.min.js"></script>
	<script src="vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>
	<!-- Global site tag (gtag.js) - Google Analytics -->
	<script async src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>
	<script>
	  window.dataLayer = window.dataLayer || [];
	  function gtag(){dataLayer.push(arguments);}
	  gtag('js', new Date());

	  gtag('config', 'UA-23581568-13');
	</script>
	
</body>
</html>
