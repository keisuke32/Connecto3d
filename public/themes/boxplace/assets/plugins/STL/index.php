<!DOCTYPE html>
<html>
	
<!-- Mirrored from www.viewstl.com/plugin/examples/simple_example.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 24 Jan 2020 06:07:54 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=UTF-8" /><!-- /Added by HTTrack -->
<head>
		<title>Viewstl Javascript Plugin - Simple Example</title>
	</head>

	<body>
		<div id="stl_cont" style="border:1px solid black;width:500px;height:500px;margin:0 auto;"></div>

		<div id="stl_cont2" style="border:1px solid black;width:500px;height:500px;margin:0 auto;"></div>

		<script src="stl_viewer.min.js"></script>		
		<script>
			var stl_viewer=new StlViewer
			(
				document.getElementById("stl_cont"),
				{
					models:
					[
						{filename:"cubeobj.obj"}
					]
				}
			);

			var stl_viewer2=new StlViewer
			(
				document.getElementById("stl_cont2"),
				{
					models:
					[
						{filename:"viewstl_plugin.stl"}
					]
				}
			);
		</script>
		
	</body>

<!-- Mirrored from www.viewstl.com/plugin/examples/simple_example.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 24 Jan 2020 06:07:54 GMT -->
</html> 