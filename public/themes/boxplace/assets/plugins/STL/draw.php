<?php 

$file = $_GET['file'];


$url = '../../../../../uploads/jobs/'.$file;

?>


<!DOCTYPE html>
<html>
	
<!-- Mirrored from www.viewstl.com/plugin/examples/simple_example.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 24 Jan 2020 06:07:54 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=UTF-8" /><!-- /Added by HTTrack -->
<head>
		<title>Viewstl Javascript Plugin - Simple Example</title>
	</head>

	<body>
		<div id="stl_cont" style="border:2px dashed #f9f9f9;width:100%;height:250px;margin:0 auto;"></div>

		<script src="stl_viewer.min.js"></script>		
		<script>
			var stl_viewer=new StlViewer
			(
				document.getElementById("stl_cont"),
				{
					models:
					[
						{filename:"<?php echo $url;?>"}
					]
				}
			);

		</script>
		
	</body>

</html> 