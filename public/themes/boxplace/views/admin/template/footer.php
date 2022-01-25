      <!-- Main Footer -->
      <footer class="main-footer">
        <!-- To the right -->
        <div class="pull-right hidden-xs">
        </div>
        <!-- Default to the left -->
        <strong>Copyright © <a href="<?=$this->siteUrl()?>"><?=$this->siteSettings('sitename')?>&nbsp;</a>.</strong>
      </footer> 

<script type="text/javascript">
$(document).ready(function(){




	<?php

if (isset($_SESSION['message'])){ 

	foreach ($_SESSION['message'] as $MSG) {
		?>

		  swal({
		  title: "<?php echo $MSG[0];?>",
		  text: "<?php echo $MSG[1];?>",
		  icon: "<?php echo $MSG[0];?>"
		});


		<?php

		unset($_SESSION['message']);
	}

	}


	?>


});
 
      </script>
      
     