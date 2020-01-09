    <!-- container-scroller -->
    <!-- plugins:js -->
    <script src="../assets/vendors/js/vendor.bundle.base.js"></script>
    <script src="../assets/vendors/js/vendor.bundle.addons.js"></script>
    <!-- endinject -->
    <!-- Plugin js for this page-->
    <!-- End plugin js for this page-->
    <!-- inject:js -->
    <script src="../assets/js/shared/off-canvas.js"></script>
    <script src="../assets/js/shared/misc.js"></script>
    <!-- endinject -->
    <!-- Custom js for this page-->
    <script src="../assets/js/demo_1/dashboard.js"></script>
    <!-- End custom js for this page-->

<script>
        // Executed when DOM is loaded
$(document).ready(function() {
    
    
   // Executed when select is changed
    $('#att_course') && $('#att_class').on('change',function() {
        var x = this.selectedIndex;

        if (x == "") {
           $("#add").hide();
        } else {
           $("#add").show();
           $("#psc").hide();
        }
    });
    
    // It must not be visible at first time
    $("#add").css("display","none");
});
    </script>
    
        
    <script>
        // Executed when DOM is loaded
$(document).ready(function() {
    
    
   // Executed when select is changed
    $('#att_course') && $('#att_class').on('change',function() {
        var x = this.selectedIndex;

        if (x == "") {
           $("#view").hide();
        } else {
           $("#view").show();
        }
    });
    
    // It must not be visible at first time
    $("#view").css("display","none");
});
    </script>
    
    
        
    <script>
        // Executed when DOM is loaded
$(document).ready(function() {
    
    
   // Executed when select is changed
    $('#att_course') && $('#att_class').on('change',function() {
        var x = this.selectedIndex;

        if (x == "") {
           $("#del").hide();
        } else {
           $("#del").show();
        }
    });
    
    // It must not be visible at first time
    $("#del").css("display","none");
});
    </script>
    
     <script>
        // Executed when DOM is loaded
$(document).ready(function() {
    
    
   // Executed when select is changed
    $('#att_course') && $('#att_class').on('change',function() {
        var x = this.selectedIndex;

        if (x == "") {
           $("#cadd").hide();
        } else {
           $("#cadd").show();
        }
    });
    
    // It must not be visible at first time
    $("#cadd").css("display","none");
});
    </script>

    <script>
    $(document).ready(function() {
    // show the alert
    setTimeout(function() {
        $(".alert").alert('close');
    }, 2000);
    });
    </script>

  </body>
</html>
