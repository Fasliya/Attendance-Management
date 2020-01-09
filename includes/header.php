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
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Genius - Attendance</title>
    <!-- plugins:css -->
    <link rel="stylesheet" href="assets/vendors/iconfonts/mdi/css/materialdesignicons.min.css">
    <link rel="stylesheet" href="assets/vendors/iconfonts/ionicons/css/ionicons.css">
    <link rel="stylesheet" href="assets/vendors/iconfonts/typicons/src/font/typicons.css">
    <link rel="stylesheet" href="assets/vendors/iconfonts/flag-icon-css/css/flag-icon.min.css">
    <link rel="stylesheet" href="assets/vendors/css/vendor.bundle.base.css">
    <link rel="stylesheet" href="assets/vendors/css/vendor.bundle.addons.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
    <!-- endinject -->
    <!-- plugin css for this page -->
    <!-- End plugin css for this page -->
    <!-- inject:css -->
    <link rel="stylesheet" href="assets/css/shared/style.css">
    <!-- endinject -->
    <!-- Layout styles -->
    <link rel="stylesheet" href="assets/css/demo_1/style.css">
    <!-- End Layout styles -->
    <link rel="shortcut icon" href="assets/images/favicon.png" />
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
 
 
      
      <style>
          @import url('https://fonts.googleapis.com/css?family=Roboto+Mono&display=swap');
          
          
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
      <script>
$(document).ready(function(){
  $("#myInput").on("keyup", function() {
    var value = $(this).val().toLowerCase();
    $("#myTable tr").filter(function() {
      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
    });
  });
});
</script>
      <script>
$(document).ready(function() {
        $("#att_class").change(function(){
            
            var selval = $('#att_class option:selected').val());
         
        })
    });
</script>


      
  </head>
 <body>
    <div class="container-scroller">
      <!-- partial:partials/_navbar.html -->
      <nav class="navbar default-layout col-lg-12 col-12 p-0 d-flex flex-row">
        <div class="text-center navbar-brand-wrapper d-flex align-items-top justify-content-center">
          <a class="navbar-brand brand-logo" href="index.php">
              <p style="margin-top: 3.8%; font-family: 'Roboto Mono'; color: white; font-size: 18px; font-weight: 300;">Attendance Management</p></a>
          
        </div>
        <div style="background-color:#EEEEEE;" class="navbar-menu-wrapper d-flex align-items-center">
          <ul class="navbar-nav">
            
           
          </ul>
          <form class="ml-auto search-form d-none d-md-block" action="#">
               
            <div class="form-group">
              <input type="text" id="myInput" placeholder="Search Students, Courses, Dates, etc." class="form-control">
              
            
              
            </div>
          </form> <!--
          <a style="text-decoration: none; margin-top:1.4%; margin-right:-4%; margin-left:2%; width:20%" href="../Dashboard/indexAdmin.php"><p> ◀️ Back to Dashboard</p></a> -->
          <button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center" type="button" data-toggle="offcanvas">
            <span class="mdi mdi-menu"></span>
          </button>
        </div>
      </nav>
      <!-- partial -->
      <div class="container-fluid page-body-wrapper">
        <!-- partial:partials/_sidebar.php -->
        <nav class="sidebar sidebar-offcanvas" id="sidebar">
          <ul class="nav">
           
       
            <li class="nav-item">
              <a class="nav-link" href="index.php">
                <i class="menu-icon typcn typcn-document-text"></i>
                <span class="menu-title">Attendance</span>
              </a>
            </li>
            
             <li class="nav-item">
              <a class="nav-link" href="course_add.php">
                <i class="menu-icon typcn typcn-user-outline"></i>
                <span class="menu-title">Add New Course</span>
              </a>
            </li>
            
            <li class="nav-item">
              <a class="nav-link" href="manage_course.php">
                <i class="menu-icon typcn typcn-user-outline"></i>
                <span class="menu-title">Manage Courses</span>
              </a>
            </li>
           
        
            
              <li class="nav-item">
              <a class="nav-link" href="add_class.php">
                <i class="menu-icon typcn typcn-user-outline"></i>
                <span class="menu-title">Add a New Batch</span>
              </a>
            </li>
            
            
            <li class="nav-item">
              <a class="nav-link" href="manage_class.php">
                <i class="menu-icon typcn typcn-user-outline"></i>
                <span class="menu-title">Manage Batch</span>
              </a>
            </li>
            
          </ul>
        </nav>